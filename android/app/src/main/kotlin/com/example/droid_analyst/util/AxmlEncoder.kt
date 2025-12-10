package com.example.droid_analyst.util

import android.util.Log
import org.xmlpull.v1.XmlPullParser
import org.xmlpull.v1.XmlPullParserFactory
import java.io.*
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Standalone Android Binary XML (AXML) encoder.
 * Encodes human-readable XML to binary AXML format for AndroidManifest.xml and resource XMLs.
 * 
 * This is a self-contained implementation that doesn't depend on external libraries.
 * 
 * AXML Format:
 * - Header (magic + size)
 * - String Pool chunk
 * - Resource IDs chunk (optional)
 * - XML content chunks (namespace start/end, element start/end, text)
 */
object AxmlEncoder {
    private const val TAG = "AxmlEncoder"
    
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
    private const val TYPE_STRING = 0x03
    private const val TYPE_INT_DEC = 0x10
    private const val TYPE_INT_HEX = 0x11
    private const val TYPE_INT_BOOLEAN = 0x12
    
    // Android namespace
    private const val ANDROID_NS = "http://schemas.android.com/apk/res/android"
    private const val ANDROID_NS_PREFIX = "android"
    
    // Common Android resource IDs for manifest attributes
    private val ANDROID_ATTR_IDS = mapOf(
        "theme" to 0x01010000,
        "label" to 0x01010001,
        "icon" to 0x01010002,
        "name" to 0x01010003,
        "permission" to 0x01010006,
        "protectionLevel" to 0x01010009,
        "versionCode" to 0x0101021b,
        "versionName" to 0x0101021c,
        "minSdkVersion" to 0x0101020c,
        "targetSdkVersion" to 0x01010270,
        "maxSdkVersion" to 0x01010271,
        "allowBackup" to 0x01010280,
        "debuggable" to 0x0101000f,
        "exported" to 0x01010010,
        "enabled" to 0x0101000e,
        "hardwareAccelerated" to 0x010102d3,
        "largeHeap" to 0x0101035a,
        "supportsRtl" to 0x010103af,
        "roundIcon" to 0x0101052c,
        "networkSecurityConfig" to 0x01010527,
        "extractNativeLibs" to 0x010104ea,
        "usesCleartextTraffic" to 0x010104ec,
        "appComponentFactory" to 0x0101057a,
        "requestLegacyExternalStorage" to 0x01010603,
        "preserveLegacyExternalStorage" to 0x01010614,
        "value" to 0x01010024,
        "resource" to 0x01010025,
        "authorities" to 0x01010018,
        "host" to 0x01010028,
        "scheme" to 0x01010027,
        "path" to 0x0101002a,
        "pathPrefix" to 0x0101002b,
        "pathPattern" to 0x0101002c,
        "mimeType" to 0x01010026,
        "action" to 0x0101002f,
        "category" to 0x01010030,
        "data" to 0x01010031,
        "configChanges" to 0x0101001f,
        "screenOrientation" to 0x0101001e,
        "launchMode" to 0x0101001d,
        "windowSoftInputMode" to 0x0101022b,
        "taskAffinity" to 0x01010012,
        "process" to 0x01010011,
        "grantUriPermissions" to 0x0101001b,
        "readPermission" to 0x01010007,
        "writePermission" to 0x01010008,
        "required" to 0x0101028e,
        "glEsVersion" to 0x01010281,
        "priority" to 0x0101001c,
        "initOrder" to 0x0101001a,
        "installLocation" to 0x010102b7,
        "sharedUserId" to 0x0101000b,
        "sharedUserLabel" to 0x0101000c
    )
    
    /**
     * Encode text XML string to binary AXML format.
     * @param textXml The text XML content
     * @return Binary AXML bytes, or null on failure
     */
    fun encode(textXml: String): ByteArray? {
        return try {
            val parser = XmlPullParserFactory.newInstance().newPullParser()
            parser.setInput(StringReader(textXml))
            encodeFromParser(parser)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to encode XML: ${e.message}", e)
            null
        }
    }
    
    /**
     * Encode text XML file to binary AXML format.
     * @param textXmlFile The text XML file
     * @return Binary AXML bytes, or null on failure
     */
    fun encode(textXmlFile: File): ByteArray? {
        if (!textXmlFile.exists()) {
            Log.e(TAG, "File does not exist: ${textXmlFile.absolutePath}")
            return null
        }
        return encode(textXmlFile.readText())
    }
    
    /**
     * Encode text XML to binary and write to file.
     */
    fun encodeToFile(textXml: String, outputFile: File): Boolean {
        val encoded = encode(textXml) ?: return false
        return try {
            outputFile.writeBytes(encoded)
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to write encoded XML: ${e.message}", e)
            false
        }
    }
    
    /**
     * Check if XML content is already binary AXML format.
     */
    fun isBinaryXml(bytes: ByteArray): Boolean {
        if (bytes.size < 4) return false
        return bytes[0] == 0x03.toByte() && 
               bytes[1] == 0x00.toByte() &&
               bytes[2] == 0x08.toByte() && 
               bytes[3] == 0x00.toByte()
    }
    
    /**
     * Check if XML content is text format (starts with < or whitespace before <).
     */
    fun isTextXml(bytes: ByteArray): Boolean {
        if (bytes.isEmpty()) return false
        val start = String(bytes.take(100).toByteArray(), Charsets.UTF_8).trim()
        return start.startsWith("<?xml") || start.startsWith("<")
    }
    
    // ==================== Internal Encoding Logic ====================
    
    private fun encodeFromParser(parser: XmlPullParser): ByteArray? {
        // Collect all data first
        val strings = mutableListOf<String>()
        val stringIndices = mutableMapOf<String, Int>()
        val resourceIds = mutableListOf<Int>()
        val events = mutableListOf<XmlEvent>()
        val namespaces = mutableMapOf<String, String>() // prefix -> uri
        
        var lineNumber = 1
        
        fun getStringIndex(s: String): Int {
            return stringIndices.getOrPut(s) {
                strings.add(s)
                strings.size - 1
            }
        }
        
        // First pass: collect all strings and events
        var eventType = parser.eventType
        while (eventType != XmlPullParser.END_DOCUMENT) {
            when (eventType) {
                XmlPullParser.START_TAG -> {
                    // Collect namespace declarations
                    val nsCount = try { parser.getNamespaceCount(parser.depth) } catch (e: Exception) { 0 }
                    val prevNsCount = if (parser.depth > 1) {
                        try { parser.getNamespaceCount(parser.depth - 1) } catch (e: Exception) { 0 }
                    } else 0
                    
                    for (i in prevNsCount until nsCount) {
                        val prefix = parser.getNamespacePrefix(i) ?: ""
                        val uri = parser.getNamespaceUri(i) ?: ""
                        if (prefix.isNotEmpty() && uri.isNotEmpty() && !namespaces.containsKey(prefix)) {
                            namespaces[prefix] = uri
                            events.add(XmlEvent.StartNamespace(
                                lineNumber,
                                getStringIndex(prefix),
                                getStringIndex(uri)
                            ))
                        }
                    }
                    
                    // Get element info
                    val ns = parser.namespace ?: ""
                    val name = parser.name ?: ""
                    val nsIdx = if (ns.isNotEmpty()) getStringIndex(ns) else -1
                    val nameIdx = getStringIndex(name)
                    
                    // Collect attributes
                    val attrs = mutableListOf<XmlAttribute>()
                    for (i in 0 until parser.attributeCount) {
                        val attrNs = parser.getAttributeNamespace(i) ?: ""
                        val attrName = parser.getAttributeName(i) ?: ""
                        val attrValue = parser.getAttributeValue(i) ?: ""
                        
                        val attrNsIdx = if (attrNs.isNotEmpty()) getStringIndex(attrNs) else -1
                        val attrNameIdx = getStringIndex(attrName)
                        
                        // Determine value type and data
                        val (valueType, valueData, valueStringIdx) = parseAttributeValue(attrValue, ::getStringIndex)
                        
                        // Get resource ID for android namespace attributes
                        val resId = if (attrNs == ANDROID_NS) {
                            ANDROID_ATTR_IDS[attrName] ?: 0
                        } else 0
                        
                        // Add resource ID to list if needed
                        if (resId != 0 && !resourceIds.contains(resId)) {
                            // Resource IDs should be at the string index position
                            while (resourceIds.size < attrNameIdx) {
                                resourceIds.add(0)
                            }
                            if (resourceIds.size == attrNameIdx) {
                                resourceIds.add(resId)
                            }
                        }
                        
                        attrs.add(XmlAttribute(attrNsIdx, attrNameIdx, valueStringIdx, valueType, valueData))
                    }
                    
                    events.add(XmlEvent.StartElement(lineNumber, nsIdx, nameIdx, attrs))
                }
                
                XmlPullParser.END_TAG -> {
                    val ns = parser.namespace ?: ""
                    val name = parser.name ?: ""
                    val nsIdx = if (ns.isNotEmpty()) getStringIndex(ns) else -1
                    val nameIdx = getStringIndex(name)
                    events.add(XmlEvent.EndElement(lineNumber, nsIdx, nameIdx))
                }
                
                XmlPullParser.TEXT -> {
                    val text = parser.text
                    if (!text.isNullOrBlank()) {
                        val textIdx = getStringIndex(text.trim())
                        events.add(XmlEvent.Text(lineNumber, textIdx))
                    }
                }
            }
            eventType = parser.next()
            lineNumber++
        }
        
        // Add namespace end events
        namespaces.forEach { (prefix, uri) ->
            events.add(XmlEvent.EndNamespace(
                lineNumber,
                stringIndices[prefix] ?: 0,
                stringIndices[uri] ?: 0
            ))
        }
        
        // Build binary output
        return buildBinaryXml(strings, resourceIds, events)
    }
    
    private fun parseAttributeValue(value: String, getStringIndex: (String) -> Int): Triple<Int, Int, Int> {
        return when {
            // Boolean
            value.equals("true", ignoreCase = true) -> Triple(TYPE_INT_BOOLEAN, 0xFFFFFFFF.toInt(), -1)
            value.equals("false", ignoreCase = true) -> Triple(TYPE_INT_BOOLEAN, 0, -1)
            
            // Reference (@...resourceId)
            value.startsWith("@") -> {
                val refValue = value.removePrefix("@")
                val resId = when {
                    refValue.startsWith("0x") -> refValue.removePrefix("0x").toIntOrNull(16) ?: 0
                    refValue.all { it.isDigit() } -> refValue.toIntOrNull() ?: 0
                    else -> 0 // Named reference, would need resource table lookup
                }
                if (resId != 0) {
                    Triple(TYPE_REFERENCE, resId, -1)
                } else {
                    // Store as string if can't parse
                    Triple(TYPE_STRING, 0, getStringIndex(value))
                }
            }
            
            // Hex integer
            value.startsWith("0x") -> {
                val intValue = value.removePrefix("0x").toIntOrNull(16)
                if (intValue != null) {
                    Triple(TYPE_INT_HEX, intValue, -1)
                } else {
                    Triple(TYPE_STRING, 0, getStringIndex(value))
                }
            }
            
            // Decimal integer
            value.all { it.isDigit() || it == '-' } && value.isNotEmpty() -> {
                val intValue = value.toIntOrNull()
                if (intValue != null) {
                    Triple(TYPE_INT_DEC, intValue, -1)
                } else {
                    Triple(TYPE_STRING, 0, getStringIndex(value))
                }
            }
            
            // Default: string
            else -> Triple(TYPE_STRING, 0, getStringIndex(value))
        }
    }
    
    private fun buildBinaryXml(
        strings: List<String>,
        resourceIds: List<Int>,
        events: List<XmlEvent>
    ): ByteArray {
        val output = ByteArrayOutputStream()
        
        // Build string pool chunk
        val stringPoolChunk = buildStringPoolChunk(strings)
        
        // Build resource IDs chunk (if any)
        val resourceIdsChunk = if (resourceIds.isNotEmpty()) {
            buildResourceIdsChunk(resourceIds)
        } else {
            ByteArray(0)
        }
        
        // Build XML content chunks
        val xmlContentChunks = buildXmlContentChunks(events)
        
        // Calculate total file size
        val totalSize = 8 + stringPoolChunk.size + resourceIdsChunk.size + xmlContentChunks.size
        
        // Write AXML header
        val header = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN)
        header.putInt(CHUNK_AXML_FILE)
        header.putInt(totalSize)
        output.write(header.array())
        
        // Write chunks
        output.write(stringPoolChunk)
        output.write(resourceIdsChunk)
        output.write(xmlContentChunks)
        
        return output.toByteArray()
    }
    
    private fun buildStringPoolChunk(strings: List<String>): ByteArray {
        // String pool format:
        // - Header (type, size)
        // - String count, style count
        // - Flags
        // - Strings offset, styles offset
        // - String offsets array
        // - Style offsets array (empty)
        // - String data (UTF-8 format: length + data + null)
        
        val stringData = ByteArrayOutputStream()
        val stringOffsets = mutableListOf<Int>()
        
        for (str in strings) {
            stringOffsets.add(stringData.size())
            
            val utf8Bytes = str.toByteArray(Charsets.UTF_8)
            val charCount = str.length
            val byteCount = utf8Bytes.size
            
            // UTF-8 format: char count (1-2 bytes), byte count (1-2 bytes), data, null
            if (charCount > 0x7F) {
                stringData.write((charCount shr 8) or 0x80)
                stringData.write(charCount and 0xFF)
            } else {
                stringData.write(charCount)
            }
            
            if (byteCount > 0x7F) {
                stringData.write((byteCount shr 8) or 0x80)
                stringData.write(byteCount and 0xFF)
            } else {
                stringData.write(byteCount)
            }
            
            stringData.write(utf8Bytes)
            stringData.write(0) // Null terminator
        }
        
        // Pad string data to 4-byte alignment
        while (stringData.size() % 4 != 0) {
            stringData.write(0)
        }
        
        val headerSize = 28 // Fixed header size
        val offsetsSize = strings.size * 4
        val stringsDataStart = headerSize + offsetsSize
        val totalSize = stringsDataStart + stringData.size()
        
        val chunk = ByteBuffer.allocate(totalSize).order(ByteOrder.LITTLE_ENDIAN)
        
        // Chunk header
        chunk.putInt(CHUNK_STRING_POOL)
        chunk.putInt(totalSize)
        
        // String pool header
        chunk.putInt(strings.size) // String count
        chunk.putInt(0) // Style count
        chunk.putInt(0x100) // Flags: UTF-8
        chunk.putInt(stringsDataStart) // Strings offset
        chunk.putInt(0) // Styles offset
        
        // String offsets
        for (offset in stringOffsets) {
            chunk.putInt(offset)
        }
        
        // String data
        chunk.put(stringData.toByteArray())
        
        return chunk.array()
    }
    
    private fun buildResourceIdsChunk(resourceIds: List<Int>): ByteArray {
        val size = 8 + resourceIds.size * 4
        val chunk = ByteBuffer.allocate(size).order(ByteOrder.LITTLE_ENDIAN)
        
        chunk.putInt(CHUNK_RESOURCE_IDS)
        chunk.putInt(size)
        
        for (resId in resourceIds) {
            chunk.putInt(resId)
        }
        
        return chunk.array()
    }
    
    private fun buildXmlContentChunks(events: List<XmlEvent>): ByteArray {
        val output = ByteArrayOutputStream()
        
        for (event in events) {
            val chunk = when (event) {
                is XmlEvent.StartNamespace -> buildNamespaceChunk(CHUNK_START_NAMESPACE, event.lineNumber, event.prefixIdx, event.uriIdx)
                is XmlEvent.EndNamespace -> buildNamespaceChunk(CHUNK_END_NAMESPACE, event.lineNumber, event.prefixIdx, event.uriIdx)
                is XmlEvent.StartElement -> buildStartElementChunk(event)
                is XmlEvent.EndElement -> buildEndElementChunk(event)
                is XmlEvent.Text -> buildTextChunk(event)
            }
            output.write(chunk)
        }
        
        return output.toByteArray()
    }
    
    private fun buildNamespaceChunk(type: Int, lineNumber: Int, prefixIdx: Int, uriIdx: Int): ByteArray {
        val chunk = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN)
        
        chunk.putInt(type)
        chunk.putInt(24) // Size
        chunk.putInt(lineNumber)
        chunk.putInt(0xFFFFFFFF.toInt()) // Comment
        chunk.putInt(prefixIdx)
        chunk.putInt(uriIdx)
        
        return chunk.array()
    }
    
    private fun buildStartElementChunk(event: XmlEvent.StartElement): ByteArray {
        val attrCount = event.attributes.size
        val size = 36 + attrCount * 20 // Fixed header + attributes
        
        val chunk = ByteBuffer.allocate(size).order(ByteOrder.LITTLE_ENDIAN)
        
        chunk.putInt(CHUNK_START_ELEMENT)
        chunk.putInt(size)
        chunk.putInt(event.lineNumber)
        chunk.putInt(0xFFFFFFFF.toInt()) // Comment
        chunk.putInt(event.nsIdx)
        chunk.putInt(event.nameIdx)
        chunk.putShort(0x14) // Attribute start
        chunk.putShort(0x14) // Attribute size
        chunk.putShort(attrCount.toShort())
        chunk.putShort(0) // ID index
        chunk.putShort(0) // Class index
        chunk.putShort(0) // Style index
        
        // Write attributes
        for (attr in event.attributes) {
            chunk.putInt(attr.nsIdx)
            chunk.putInt(attr.nameIdx)
            chunk.putInt(attr.valueStringIdx)
            chunk.putInt((attr.valueType shl 24) or 0x08) // Type + size
            chunk.putInt(attr.valueData)
        }
        
        return chunk.array()
    }
    
    private fun buildEndElementChunk(event: XmlEvent.EndElement): ByteArray {
        val chunk = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN)
        
        chunk.putInt(CHUNK_END_ELEMENT)
        chunk.putInt(24)
        chunk.putInt(event.lineNumber)
        chunk.putInt(0xFFFFFFFF.toInt()) // Comment
        chunk.putInt(event.nsIdx)
        chunk.putInt(event.nameIdx)
        
        return chunk.array()
    }
    
    private fun buildTextChunk(event: XmlEvent.Text): ByteArray {
        val chunk = ByteBuffer.allocate(28).order(ByteOrder.LITTLE_ENDIAN)
        
        chunk.putInt(CHUNK_TEXT)
        chunk.putInt(28)
        chunk.putInt(event.lineNumber)
        chunk.putInt(0xFFFFFFFF.toInt()) // Comment
        chunk.putInt(event.textIdx)
        chunk.putInt(0) // Unknown
        chunk.putInt(0) // Unknown
        
        return chunk.array()
    }
    
    // ==================== Data Classes ====================
    
    private sealed class XmlEvent {
        data class StartNamespace(val lineNumber: Int, val prefixIdx: Int, val uriIdx: Int) : XmlEvent()
        data class EndNamespace(val lineNumber: Int, val prefixIdx: Int, val uriIdx: Int) : XmlEvent()
        data class StartElement(val lineNumber: Int, val nsIdx: Int, val nameIdx: Int, val attributes: List<XmlAttribute>) : XmlEvent()
        data class EndElement(val lineNumber: Int, val nsIdx: Int, val nameIdx: Int) : XmlEvent()
        data class Text(val lineNumber: Int, val textIdx: Int) : XmlEvent()
    }
    
    private data class XmlAttribute(
        val nsIdx: Int,
        val nameIdx: Int,
        val valueStringIdx: Int,
        val valueType: Int,
        val valueData: Int
    )
}
