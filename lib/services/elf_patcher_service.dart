import 'dart:typed_data';
import 'package:flutter/foundation.dart';

/// ELF file patcher to add library dependencies
/// This is used to inject libfrida-gadget.so as a dependency to an existing native library
class ElfPatcherService {
  static final ElfPatcherService _instance = ElfPatcherService._internal();
  factory ElfPatcherService() => _instance;
  ElfPatcherService._internal();

  // ELF Header Constants
  static const int EI_MAG0 = 0;
  static const int EI_MAG1 = 1;
  static const int EI_MAG2 = 2;
  static const int EI_MAG3 = 3;
  static const int EI_CLASS = 4;
  static const int EI_DATA = 5;
  
  static const int ELFCLASS32 = 1;
  static const int ELFCLASS64 = 2;
  
  static const int ELFDATA2LSB = 1; // Little endian
  static const int ELFDATA2MSB = 2; // Big endian
  
  // Dynamic section tags
  static const int DT_NULL = 0;
  static const int DT_NEEDED = 1;
  static const int DT_STRTAB = 5;
  static const int DT_STRSZ = 10;

  // The library name for DT_NEEDED must match the actual .so filename
  static const String gadgetLibName = 'libfrida-gadget.so';
  
  // Store last error for diagnostic purposes
  String? lastError;

  /// Patch an ELF file to add a new DT_NEEDED entry for frida-gadget
  /// Returns the patched bytes or null on failure
  Uint8List? patchElfToLoadGadget(Uint8List elfBytes) {
    lastError = null;
    try {
      // Verify ELF magic
      if (elfBytes.length < 64) {
        lastError = 'File too small (${elfBytes.length} bytes)';
        debugPrint(lastError);
        return null;
      }
      if (elfBytes[EI_MAG0] != 0x7F || 
          elfBytes[EI_MAG1] != 0x45 || // 'E'
          elfBytes[EI_MAG2] != 0x4C || // 'L'
          elfBytes[EI_MAG3] != 0x46) { // 'F'
        lastError = 'Not a valid ELF file (bad magic)';
        debugPrint(lastError);
        return null;
      }
      
      final isElf64 = elfBytes[EI_CLASS] == ELFCLASS64;
      final isLittleEndian = elfBytes[EI_DATA] == ELFDATA2LSB;
      
      if (!isLittleEndian) {
        lastError = 'Big-endian ELF not supported';
        debugPrint(lastError);
        return null;
      }
      
      debugPrint('ELF: ${isElf64 ? "64-bit" : "32-bit"}, little-endian');
      
      if (isElf64) {
        return _patchElf64(elfBytes);
      } else {
        return _patchElf32(elfBytes);
      }
    } catch (e, stack) {
      lastError = 'Exception: $e';
      debugPrint('ELF patching error: $e');
      debugPrint('Stack: $stack');
      return null;
    }
  }

  /// Patch 64-bit ELF file
  Uint8List? _patchElf64(Uint8List elfBytes) {
    final data = ByteData.view(elfBytes.buffer);
    
    // Read ELF header
    final phoff = data.getUint64(32, Endian.little); // e_phoff
    final phentsize = data.getUint16(54, Endian.little); // e_phentsize
    final phnum = data.getUint16(56, Endian.little); // e_phnum
    
    debugPrint('Program headers: offset=$phoff, size=$phentsize, count=$phnum');
    
    // Find PT_DYNAMIC segment
    int? dynamicOffset;
    int? dynamicSize;
    
    for (int i = 0; i < phnum; i++) {
      final phdrOffset = phoff.toInt() + i * phentsize;
      final pType = data.getUint32(phdrOffset, Endian.little);
      
      if (pType == 2) { // PT_DYNAMIC
        dynamicOffset = data.getUint64(phdrOffset + 8, Endian.little).toInt(); // p_offset
        dynamicSize = data.getUint64(phdrOffset + 32, Endian.little).toInt(); // p_filesz
        debugPrint('Found PT_DYNAMIC: offset=$dynamicOffset, size=$dynamicSize');
        break;
      }
    }
    
    if (dynamicOffset == null) {
      debugPrint('PT_DYNAMIC not found');
      return null;
    }
    
    // Parse dynamic section to find string table
    int? strtabOffset;
    int? strtabSize;
    int? firstNeededOffset;
    final neededEntries = <int>[];
    int? nullEntryOffset;
    
    const dynamicEntrySize = 16; // Dyn64 entry size
    final numDynEntries = dynamicSize! ~/ dynamicEntrySize;
    
    for (int i = 0; i < numDynEntries; i++) {
      final entryOffset = dynamicOffset + i * dynamicEntrySize;
      final dTag = data.getInt64(entryOffset, Endian.little);
      final dVal = data.getUint64(entryOffset + 8, Endian.little);
      
      if (dTag == DT_STRTAB) {
        strtabOffset = dVal.toInt();
      } else if (dTag == DT_STRSZ) {
        strtabSize = dVal.toInt();
      } else if (dTag == DT_NEEDED) {
        firstNeededOffset ??= entryOffset;
        neededEntries.add(dVal.toInt());
      } else if (dTag == DT_NULL) {
        nullEntryOffset = entryOffset;
        break;
      }
    }
    
    if (strtabOffset == null || nullEntryOffset == null) {
      debugPrint('Required dynamic entries not found');
      return null;
    }
    
    debugPrint('STRTAB: offset=$strtabOffset, size=$strtabSize');
    debugPrint('Existing NEEDED entries: ${neededEntries.length}');
    debugPrint('NULL entry at: $nullEntryOffset');
    
    // Create the patched ELF
    // Strategy: Add "libfrida-gadget.so" to string table and add a new DT_NEEDED entry
    // DT_NEEDED uses actual library filename, not Java loadLibrary name
    
    const gadgetName = '$gadgetLibName\x00';  // libfrida-gadget.so\0
    final gadgetNameBytes = gadgetName.codeUnits;
    
    // Find file offset of string table
    // We need to convert the virtual address to file offset
    int? strtabFileOffset;
    
    for (int i = 0; i < phnum; i++) {
      final phdrOffset = phoff.toInt() + i * phentsize;
      final pType = data.getUint32(phdrOffset, Endian.little);
      
      if (pType == 1) { // PT_LOAD
        final pOffset = data.getUint64(phdrOffset + 8, Endian.little).toInt();
        final pVaddr = data.getUint64(phdrOffset + 16, Endian.little).toInt();
        final pFilesz = data.getUint64(phdrOffset + 32, Endian.little).toInt();
        
        if (strtabOffset >= pVaddr && strtabOffset < pVaddr + pFilesz) {
          strtabFileOffset = pOffset + (strtabOffset - pVaddr);
          debugPrint('STRTAB file offset: $strtabFileOffset');
          break;
        }
      }
    }
    
    if (strtabFileOffset == null) {
      debugPrint('Could not find STRTAB file offset');
      return null;
    }
    
    // Check if the string already exists
    final existingStrings = String.fromCharCodes(
      elfBytes.sublist(strtabFileOffset, strtabFileOffset + (strtabSize ?? 1024))
    );
    
    if (existingStrings.contains(gadgetLibName)) {
      debugPrint('$gadgetLibName already in string table');
      
      // Find its offset
      final strOffset = existingStrings.indexOf(gadgetLibName);
      
      // Check if DT_NEEDED for it exists
      if (!neededEntries.contains(strOffset)) {
        // Need to add DT_NEEDED entry, but reuse existing string
        return _addNeededEntry64(elfBytes, nullEntryOffset, strOffset);
      }
      
      debugPrint('DT_NEEDED for $gadgetLibName already exists');
      return elfBytes;
    }
    
    // We need to add the string and a new DT_NEEDED entry
    // This is complex because we need to extend the string table
    // For simplicity, we'll use a different approach: reuse existing slack space
    
    // Alternative approach: Find slack space at end of string table
    final strtabEnd = strtabFileOffset + (strtabSize ?? 0);
    
    // Check for slack space (null bytes)
    int slackStart = strtabEnd;
    while (slackStart < elfBytes.length && elfBytes[slackStart] == 0) {
      slackStart++;
    }
    
    final slackSize = slackStart - strtabEnd;
    debugPrint('Slack space after STRTAB: $slackSize bytes');
    
    if (slackSize >= gadgetNameBytes.length) {
      // We can fit in slack space
      final result = Uint8List.fromList(elfBytes);
      final resultData = ByteData.view(result.buffer);
      
      // Write gadget name at end of string table
      final newStrOffset = strtabSize!;
      for (int i = 0; i < gadgetNameBytes.length; i++) {
        result[strtabFileOffset + strtabSize + i] = gadgetNameBytes[i];
      }
      
      // Update STRSZ
      for (int i = 0; i < numDynEntries; i++) {
        final entryOffset = dynamicOffset + i * dynamicEntrySize;
        final dTag = data.getInt64(entryOffset, Endian.little);
        if (dTag == DT_STRSZ) {
          resultData.setUint64(entryOffset + 8, strtabSize + gadgetNameBytes.length, Endian.little);
          break;
        }
      }
      
      // Add new DT_NEEDED entry by converting DT_NULL to DT_NEEDED
      // Then add a new DT_NULL after it
      resultData.setInt64(nullEntryOffset, DT_NEEDED, Endian.little);
      resultData.setUint64(nullEntryOffset + 8, newStrOffset, Endian.little);
      
      // Add new DT_NULL
      final newNullOffset = nullEntryOffset + dynamicEntrySize;
      if (newNullOffset + dynamicEntrySize <= dynamicOffset + dynamicSize) {
        resultData.setInt64(newNullOffset, DT_NULL, Endian.little);
        resultData.setUint64(newNullOffset + 8, 0, Endian.little);
      }
      
      debugPrint('Successfully patched ELF64 to load $gadgetLibName');
      return result;
    }
    
    lastError = 'Not enough slack space (need ${gadgetNameBytes.length} bytes, have $slackSize)';
    debugPrint(lastError);
    return null;
  }
  
  /// Add a DT_NEEDED entry reusing existing string
  Uint8List _addNeededEntry64(Uint8List elfBytes, int nullEntryOffset, int strOffset) {
    final result = Uint8List.fromList(elfBytes);
    final resultData = ByteData.view(result.buffer);
    
    // Convert DT_NULL to DT_NEEDED
    resultData.setInt64(nullEntryOffset, DT_NEEDED, Endian.little);
    resultData.setUint64(nullEntryOffset + 8, strOffset, Endian.little);
    
    // Add new DT_NULL
    resultData.setInt64(nullEntryOffset + 16, DT_NULL, Endian.little);
    resultData.setUint64(nullEntryOffset + 24, 0, Endian.little);
    
    return result;
  }

  /// Patch 32-bit ELF file  
  Uint8List? _patchElf32(Uint8List elfBytes) {
    final data = ByteData.view(elfBytes.buffer);
    
    // Read ELF header (32-bit)
    final phoff = data.getUint32(28, Endian.little); // e_phoff
    final phentsize = data.getUint16(42, Endian.little); // e_phentsize
    final phnum = data.getUint16(44, Endian.little); // e_phnum
    
    debugPrint('Program headers: offset=$phoff, size=$phentsize, count=$phnum');
    
    // Find PT_DYNAMIC segment
    int? dynamicOffset;
    int? dynamicSize;
    
    for (int i = 0; i < phnum; i++) {
      final phdrOffset = phoff + i * phentsize;
      final pType = data.getUint32(phdrOffset, Endian.little);
      
      if (pType == 2) { // PT_DYNAMIC
        dynamicOffset = data.getUint32(phdrOffset + 4, Endian.little); // p_offset
        dynamicSize = data.getUint32(phdrOffset + 16, Endian.little); // p_filesz
        debugPrint('Found PT_DYNAMIC: offset=$dynamicOffset, size=$dynamicSize');
        break;
      }
    }
    
    if (dynamicOffset == null) {
      debugPrint('PT_DYNAMIC not found');
      return null;
    }
    
    // Parse dynamic section
    int? strtabOffset;
    int? strtabSize;
    final neededEntries = <int>[];
    int? nullEntryOffset;
    
    const dynamicEntrySize = 8; // Dyn32 entry size
    final numDynEntries = dynamicSize! ~/ dynamicEntrySize;
    
    for (int i = 0; i < numDynEntries; i++) {
      final entryOffset = dynamicOffset + i * dynamicEntrySize;
      final dTag = data.getInt32(entryOffset, Endian.little);
      final dVal = data.getUint32(entryOffset + 4, Endian.little);
      
      if (dTag == DT_STRTAB) {
        strtabOffset = dVal;
      } else if (dTag == DT_STRSZ) {
        strtabSize = dVal;
      } else if (dTag == DT_NEEDED) {
        neededEntries.add(dVal);
      } else if (dTag == DT_NULL) {
        nullEntryOffset = entryOffset;
        break;
      }
    }
    
    if (strtabOffset == null || nullEntryOffset == null) {
      debugPrint('Required dynamic entries not found');
      return null;
    }
    
    debugPrint('STRTAB: offset=$strtabOffset, size=$strtabSize');
    debugPrint('Existing NEEDED entries: ${neededEntries.length}');
    
    // Find file offset of string table
    int? strtabFileOffset;
    
    for (int i = 0; i < phnum; i++) {
      final phdrOffset = phoff + i * phentsize;
      final pType = data.getUint32(phdrOffset, Endian.little);
      
      if (pType == 1) { // PT_LOAD
        final pOffset = data.getUint32(phdrOffset + 4, Endian.little);
        final pVaddr = data.getUint32(phdrOffset + 8, Endian.little);
        final pFilesz = data.getUint32(phdrOffset + 16, Endian.little);
        
        if (strtabOffset >= pVaddr && strtabOffset < pVaddr + pFilesz) {
          strtabFileOffset = pOffset + (strtabOffset - pVaddr);
          break;
        }
      }
    }
    
    if (strtabFileOffset == null) {
      lastError = 'Could not find STRTAB file offset in 32-bit ELF';
      debugPrint(lastError);
      return null;
    }
    
    // Check if string already exists
    const gadgetName = '$gadgetLibName\x00';  // libfrida-gadget.so\0
    final gadgetNameBytes = gadgetName.codeUnits;
    
    final existingStrings = String.fromCharCodes(
      elfBytes.sublist(strtabFileOffset, strtabFileOffset + (strtabSize ?? 1024))
    );
    
    if (existingStrings.contains(gadgetLibName)) {
      final strOffset = existingStrings.indexOf(gadgetLibName);
      if (!neededEntries.contains(strOffset)) {
        return _addNeededEntry32(elfBytes, nullEntryOffset, strOffset);
      }
      debugPrint('DT_NEEDED for $gadgetLibName already exists in 32-bit ELF');
      return elfBytes;
    }
    
    // Try to add string in slack space
    final strtabEnd = strtabFileOffset + (strtabSize ?? 0);
    int slackStart = strtabEnd;
    while (slackStart < elfBytes.length && elfBytes[slackStart] == 0) {
      slackStart++;
    }
    
    final slackSize = slackStart - strtabEnd;
    
    if (slackSize >= gadgetNameBytes.length) {
      final result = Uint8List.fromList(elfBytes);
      final resultData = ByteData.view(result.buffer);
      
      final newStrOffset = strtabSize!;
      for (int i = 0; i < gadgetNameBytes.length; i++) {
        result[strtabFileOffset + strtabSize + i] = gadgetNameBytes[i];
      }
      
      // Update STRSZ
      for (int i = 0; i < numDynEntries; i++) {
        final entryOffset = dynamicOffset + i * dynamicEntrySize;
        final dTag = data.getInt32(entryOffset, Endian.little);
        if (dTag == DT_STRSZ) {
          resultData.setUint32(entryOffset + 4, strtabSize + gadgetNameBytes.length, Endian.little);
          break;
        }
      }
      
      resultData.setInt32(nullEntryOffset, DT_NEEDED, Endian.little);
      resultData.setUint32(nullEntryOffset + 4, newStrOffset, Endian.little);
      
      resultData.setInt32(nullEntryOffset + 8, DT_NULL, Endian.little);
      resultData.setUint32(nullEntryOffset + 12, 0, Endian.little);
      
      debugPrint('Successfully patched ELF32 to load frida-gadget');
      return result;
    }
    
    debugPrint('Not enough slack space for 32-bit ELF');
    return null;
  }
  
  Uint8List _addNeededEntry32(Uint8List elfBytes, int nullEntryOffset, int strOffset) {
    final result = Uint8List.fromList(elfBytes);
    final resultData = ByteData.view(result.buffer);
    
    resultData.setInt32(nullEntryOffset, DT_NEEDED, Endian.little);
    resultData.setUint32(nullEntryOffset + 4, strOffset, Endian.little);
    
    resultData.setInt32(nullEntryOffset + 8, DT_NULL, Endian.little);
    resultData.setUint32(nullEntryOffset + 12, 0, Endian.little);
    
    return result;
  }

  /// Find the best native library to patch in an APK
  /// Prefers libraries that are loaded early (like libnative-lib.so, libapp.so, etc.)
  String? findBestLibToPatch(List<String> libNames) {
    // Priority order for patching (libraries loaded early)
    final priorities = [
      'libapp.so',        // Flutter apps
      'libnative-lib.so', // Common NDK pattern
      'libmain.so',       // Some games
      'libunity.so',      // Unity games
      'libcocos2d.so',    // Cocos2d games
      'libgame.so',       // Generic game lib
    ];
    
    // Try priority libraries first
    for (final priority in priorities) {
      if (libNames.any((name) => name.endsWith('/$priority'))) {
        return libNames.firstWhere((name) => name.endsWith('/$priority'));
      }
    }
    
    // Otherwise, pick any .so that's not frida-gadget itself
    for (final name in libNames) {
      if (name.endsWith('.so') && 
          !name.contains('frida-gadget') &&
          !name.contains('libfrida')) {
        return name;
      }
    }
    
    return null;
  }
}
