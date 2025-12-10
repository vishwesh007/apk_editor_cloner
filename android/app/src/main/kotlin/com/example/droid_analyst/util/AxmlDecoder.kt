package com.example.droid_analyst.util

import android.util.Log
import org.xmlpull.v1.XmlPullParser
import java.io.*
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Standalone Android Binary XML (AXML) decoder.
 * Decodes binary AndroidManifest.xml and other binary XML files to readable text XML.
 * 
 * This is a self-contained implementation that doesn't depend on external libraries.
 */
object AxmlDecoder {
    private const val TAG = "AxmlDecoder"
    
    // AXML chunk types
    private const val CHUNK_AXML_FILE = 0x00080003
    private const val CHUNK_STRING_POOL = 0x001C0001
    private const val CHUNK_RESOURCE_IDS = 0x00080180
    private const val CHUNK_START_NAMESPACE = 0x00100100
    private const val CHUNK_END_NAMESPACE = 0x00100101
    private const val CHUNK_START_ELEMENT = 0x00100102
    private const val CHUNK_END_ELEMENT = 0x00100103
    private const val CHUNK_TEXT = 0x00100104
    
    // Attribute value types
    private const val TYPE_NULL = 0x00
    private const val TYPE_REFERENCE = 0x01
    private const val TYPE_ATTRIBUTE = 0x02
    private const val TYPE_STRING = 0x03
    private const val TYPE_FLOAT = 0x04
    private const val TYPE_DIMENSION = 0x05
    private const val TYPE_FRACTION = 0x06
    private const val TYPE_INT_DEC = 0x10
    private const val TYPE_INT_HEX = 0x11
    private const val TYPE_INT_BOOLEAN = 0x12
    private const val TYPE_INT_COLOR_ARGB8 = 0x1C
    private const val TYPE_INT_COLOR_RGB8 = 0x1D
    private const val TYPE_INT_COLOR_ARGB4 = 0x1E
    private const val TYPE_INT_COLOR_RGB4 = 0x1F
    
    // Android namespace
    private const val ANDROID_NS = "http://schemas.android.com/apk/res/android"
    
    /**
     * Decode binary XML file to text XML string.
     * @param binaryXmlFile The binary XML file (e.g., AndroidManifest.xml from APK)
     * @return Decoded text XML, or null on failure
     */
    fun decode(binaryXmlFile: File): String? {
        if (!binaryXmlFile.exists()) {
            Log.e(TAG, "File does not exist: ${binaryXmlFile.absolutePath}")
            return null
        }
        
        return try {
            FileInputStream(binaryXmlFile).use { fis ->
                decode(fis)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode AXML: ${e.message}", e)
            null
        }
    }
    
    /**
     * Decode binary XML bytes directly.
     */
    fun decode(bytes: ByteArray): String? {
        return decode(ByteArrayInputStream(bytes))
    }
    
    /**
     * Decode binary XML from input stream.
     * @param inputStream InputStream containing binary XML data
     * @return Decoded text XML string
     */
    fun decode(inputStream: InputStream): String? {
        return try {
            val bytes = inputStream.readBytes()
            val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
            
            // Read and validate AXML header
            val magic = buffer.int
            if (magic != CHUNK_AXML_FILE) {
                Log.e(TAG, "Not a valid AXML file: magic=0x${Integer.toHexString(magic)}")
                return null
            }
            
            val fileSize = buffer.int
            Log.d(TAG, "AXML file size: $fileSize bytes")
            
            // Parse string pool
            val stringPool = parseStringPool(buffer) ?: return null
            
            // Parse resource IDs (optional)
            val resourceIds = mutableListOf<Int>()
            if (buffer.remaining() > 8) {
                val chunkType = buffer.int
                if (chunkType == CHUNK_RESOURCE_IDS) {
                    val chunkSize = buffer.int
                    val idCount = (chunkSize - 8) / 4
                    for (i in 0 until idCount) {
                        resourceIds.add(buffer.int)
                    }
                } else {
                    // Not a resource ID chunk, rewind
                    buffer.position(buffer.position() - 4)
                }
            }
            
            // Build XML output
            val sb = StringBuilder()
            sb.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>\n")
            
            var indentLevel = 0
            val namespaces = mutableMapOf<String, String>() // uri -> prefix
            
            while (buffer.remaining() > 0) {
                val chunkStart = buffer.position()
                val chunkType = buffer.int
                val chunkSize = buffer.int
                
                when (chunkType) {
                    CHUNK_START_NAMESPACE -> {
                        buffer.int // line number
                        buffer.int // comment
                        val prefixIdx = buffer.int
                        val uriIdx = buffer.int
                        val prefix = stringPool.getOrNull(prefixIdx) ?: ""
                        val uri = stringPool.getOrNull(uriIdx) ?: ""
                        namespaces[uri] = prefix
                    }
                    
                    CHUNK_END_NAMESPACE -> {
                        buffer.int // line number
                        buffer.int // comment
                        buffer.int // prefix
                        val uriIdx = buffer.int
                        val uri = stringPool.getOrNull(uriIdx) ?: ""
                        namespaces.remove(uri)
                    }
                    
                    CHUNK_START_ELEMENT -> {
                        buffer.int // line number
                        buffer.int // comment
                        val nsIdx = buffer.int
                        val nameIdx = buffer.int
                        buffer.short // attrStart
                        buffer.short // attrSize
                        val attrCount = buffer.short.toInt() and 0xFFFF
                        buffer.short // idIndex
                        buffer.short // classIndex
                        buffer.short // styleIndex
                        
                        val ns = if (nsIdx >= 0) stringPool.getOrNull(nsIdx) else null
                        val name = stringPool.getOrNull(nameIdx) ?: "unknown"
                        
                        sb.append(getIndent(indentLevel))
                        sb.append("<")
                        if (!ns.isNullOrEmpty() && namespaces.containsKey(ns)) {
                            sb.append(namespaces[ns]).append(":")
                        }
                        sb.append(name)
                        
                        // Add namespace declarations on root element
                        if (indentLevel == 0) {
                            for ((uri, prefix) in namespaces) {
                                sb.append("\n").append(getIndent(indentLevel + 1))
                                if (prefix.isEmpty()) {
                                    sb.append("xmlns=\"").append(escapeXml(uri)).append("\"")
                                } else {
                                    sb.append("xmlns:").append(prefix).append("=\"")
                                        .append(escapeXml(uri)).append("\"")
                                }
                            }
                        }
                        
                        // Parse attributes
                        for (i in 0 until attrCount) {
                            val attrNsIdx = buffer.int
                            val attrNameIdx = buffer.int
                            val attrValueIdx = buffer.int
                            val attrType = (buffer.int shr 24) and 0xFF
                            val attrData = buffer.int
                            
                            val attrNs = if (attrNsIdx >= 0) stringPool.getOrNull(attrNsIdx) else null
                            var attrName = stringPool.getOrNull(attrNameIdx) ?: "attr$i"
                            
                            // Try to resolve attribute name from resource ID
                            if (attrName.isEmpty() && attrNameIdx >= 0 && attrNameIdx < resourceIds.size) {
                                attrName = getAttributeNameFromId(resourceIds[attrNameIdx])
                            }
                            
                            val attrValue = formatAttributeValue(attrType, attrData, attrValueIdx, stringPool)
                            
                            sb.append("\n").append(getIndent(indentLevel + 1))
                            if (!attrNs.isNullOrEmpty() && namespaces.containsKey(attrNs)) {
                                sb.append(namespaces[attrNs]).append(":")
                            }
                            sb.append(attrName).append("=\"").append(escapeXml(attrValue)).append("\"")
                        }
                        
                        sb.append(">\n")
                        indentLevel++
                    }
                    
                    CHUNK_END_ELEMENT -> {
                        buffer.int // line number
                        buffer.int // comment
                        val nsIdx = buffer.int
                        val nameIdx = buffer.int
                        
                        val ns = if (nsIdx >= 0) stringPool.getOrNull(nsIdx) else null
                        val name = stringPool.getOrNull(nameIdx) ?: "unknown"
                        
                        indentLevel--
                        sb.append(getIndent(indentLevel))
                        sb.append("</")
                        if (!ns.isNullOrEmpty() && namespaces.containsKey(ns)) {
                            sb.append(namespaces[ns]).append(":")
                        }
                        sb.append(name).append(">\n")
                    }
                    
                    CHUNK_TEXT -> {
                        buffer.int // line number
                        buffer.int // comment
                        val textIdx = buffer.int
                        buffer.int // unknown
                        buffer.int // unknown
                        
                        val text = stringPool.getOrNull(textIdx) ?: ""
                        if (text.isNotBlank()) {
                            sb.append(getIndent(indentLevel))
                            sb.append(escapeXml(text.trim())).append("\n")
                        }
                    }
                    
                    else -> {
                        // Skip unknown chunk
                        val remaining = chunkSize - 8
                        if (remaining > 0 && remaining <= buffer.remaining()) {
                            buffer.position(buffer.position() + remaining)
                        }
                    }
                }
            }
            
            sb.toString()
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to parse AXML: ${e.message}", e)
            null
        }
    }
    
    private fun parseStringPool(buffer: ByteBuffer): List<String>? {
        val chunkType = buffer.int
        if (chunkType != CHUNK_STRING_POOL) {
            Log.e(TAG, "Expected string pool chunk, got: 0x${Integer.toHexString(chunkType)}")
            return null
        }
        
        val chunkSize = buffer.int
        val stringCount = buffer.int
        val styleCount = buffer.int
        val flags = buffer.int
        val stringsOffset = buffer.int
        val stylesOffset = buffer.int
        
        val isUtf8 = (flags and (1 shl 8)) != 0
        
        // Read string offsets
        val stringOffsets = IntArray(stringCount)
        for (i in 0 until stringCount) {
            stringOffsets[i] = buffer.int
        }
        
        // Skip style offsets
        for (i in 0 until styleCount) {
            buffer.int
        }
        
        // Calculate strings data start position
        val stringsDataStart = buffer.position()
        
        // Read strings
        val strings = mutableListOf<String>()
        for (i in 0 until stringCount) {
            buffer.position(stringsDataStart + stringOffsets[i])
            val str = if (isUtf8) {
                readUtf8String(buffer)
            } else {
                readUtf16String(buffer)
            }
            strings.add(str)
        }
        
        // Skip to end of chunk
        buffer.position(8 + chunkSize) // 8 = initial magic + fileSize already consumed before this function
        
        return strings
    }
    
    private fun readUtf8String(buffer: ByteBuffer): String {
        // UTF-8 strings: 1-2 bytes char count, 1-2 bytes byte count, then string data
        val charCount = readEncodedLength(buffer, true)
        val byteCount = readEncodedLength(buffer, true)
        
        val bytes = ByteArray(byteCount)
        buffer.get(bytes)
        return String(bytes, Charsets.UTF_8)
    }
    
    private fun readUtf16String(buffer: ByteBuffer): String {
        // UTF-16 strings: 2-4 bytes length, then string data
        var charCount = buffer.short.toInt() and 0xFFFF
        if ((charCount and 0x8000) != 0) {
            charCount = ((charCount and 0x7FFF) shl 16) or (buffer.short.toInt() and 0xFFFF)
        }
        
        val chars = CharArray(charCount)
        for (i in 0 until charCount) {
            chars[i] = buffer.short.toInt().toChar()
        }
        return String(chars)
    }
    
    private fun readEncodedLength(buffer: ByteBuffer, isUtf8: Boolean): Int {
        val first = buffer.get().toInt() and 0xFF
        return if ((first and 0x80) != 0) {
            val second = buffer.get().toInt() and 0xFF
            ((first and 0x7F) shl 8) or second
        } else {
            first
        }
    }
    
    private fun formatAttributeValue(type: Int, data: Int, stringIdx: Int, stringPool: List<String>): String {
        return when (type) {
            TYPE_NULL -> ""
            TYPE_REFERENCE -> "@0x${Integer.toHexString(data)}"
            TYPE_ATTRIBUTE -> "?0x${Integer.toHexString(data)}"
            TYPE_STRING -> stringPool.getOrNull(stringIdx) ?: ""
            TYPE_FLOAT -> java.lang.Float.intBitsToFloat(data).toString()
            TYPE_DIMENSION -> formatDimension(data)
            TYPE_FRACTION -> formatFraction(data)
            TYPE_INT_DEC -> data.toString()
            TYPE_INT_HEX -> "0x${Integer.toHexString(data)}"
            TYPE_INT_BOOLEAN -> if (data != 0) "true" else "false"
            TYPE_INT_COLOR_ARGB8, TYPE_INT_COLOR_RGB8, 
            TYPE_INT_COLOR_ARGB4, TYPE_INT_COLOR_RGB4 -> "#${Integer.toHexString(data)}"
            else -> {
                // Try string first, fall back to hex
                if (stringIdx >= 0 && stringIdx < stringPool.size) {
                    stringPool[stringIdx]
                } else {
                    "0x${Integer.toHexString(data)}"
                }
            }
        }
    }
    
    private fun formatDimension(data: Int): String {
        val value = complexToFloat(data)
        val units = arrayOf("px", "dp", "sp", "pt", "in", "mm")
        val unitIdx = (data shr 0) and 0xF
        val unit = units.getOrElse(unitIdx) { "px" }
        return "${value}${unit}"
    }
    
    private fun formatFraction(data: Int): String {
        val value = complexToFloat(data) * 100
        val isParent = ((data shr 0) and 0x1) != 0
        return if (isParent) "${value}%p" else "${value}%"
    }
    
    private fun complexToFloat(complex: Int): Float {
        val mantissa = (complex and 0xFFFFFF00.toInt()) shr 8
        val radix = (complex shr 4) and 0x3
        val radixMults = floatArrayOf(1.0f, 1.0f / 128, 1.0f / 32768, 1.0f / 8388608)
        return mantissa * radixMults[radix]
    }
    
    private fun getAttributeNameFromId(resId: Int): String {
        // Common Android attribute IDs
        return when (resId) {
            0x01010000 -> "theme"
            0x01010001 -> "label"
            0x01010002 -> "icon"
            0x01010003 -> "name"
            0x0101000f -> "versionCode"
            0x01010010 -> "versionName"
            0x0101001a -> "minSdkVersion"
            0x0101001b -> "targetSdkVersion"
            0x0101001c -> "maxSdkVersion"
            0x01010020 -> "allowBackup"
            0x01010024 -> "permission"
            0x0101002b -> "debuggable"
            0x01010270 -> "installLocation"
            0x01010001 + 0x50 -> "exported"
            0x0101027f -> "hardwareAccelerated"
            0x01010281 -> "largeHeap"
            0x010102aa -> "supportsRtl"
            0x010103a6 -> "roundIcon"
            0x010103f2 -> "networkSecurityConfig"
            0x01010573 -> "extractNativeLibs"
            0x0101058e -> "usesCleartextTraffic"
            else -> "attr_${Integer.toHexString(resId)}"
        }
    }
    
    /**
     * Check if data appears to be binary XML (AXML format).
     * AXML files start with magic bytes: 0x03 0x00 0x08 0x00 (little-endian: CHUNK_AXML_FILE)
     */
    fun isBinaryXml(file: File): Boolean {
        if (!file.exists() || file.length() < 8) return false
        
        return try {
            FileInputStream(file).use { fis ->
                val header = ByteArray(4)
                if (fis.read(header) != 4) return false
                
                // AXML magic: 0x00080003 in little-endian
                header[0] == 0x03.toByte() && 
                header[1] == 0x00.toByte() &&
                header[2] == 0x08.toByte() && 
                header[3] == 0x00.toByte()
            }
        } catch (e: Exception) {
            false
        }
    }
    
    /**
     * Check if data is binary XML from bytes.
     */
    fun isBinaryXml(bytes: ByteArray): Boolean {
        if (bytes.size < 4) return false
        return bytes[0] == 0x03.toByte() && 
               bytes[1] == 0x00.toByte() &&
               bytes[2] == 0x08.toByte() && 
               bytes[3] == 0x00.toByte()
    }
    
    private fun getIndent(level: Int): String {
        return "    ".repeat(level)
    }
    
    private fun escapeXml(text: String): String {
        return text
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace("\"", "&quot;")
            .replace("'", "&apos;")
    }
}
