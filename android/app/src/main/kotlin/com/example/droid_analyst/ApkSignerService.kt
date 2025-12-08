package com.example.droid_analyst

import android.content.Context
import android.util.Log
import com.android.apksig.ApkSigner
import java.io.*
import java.security.*
import java.security.cert.CertificateFactory
import java.security.cert.X509Certificate
import java.security.spec.PKCS8EncodedKeySpec
import org.bouncycastle.asn1.pkcs.PrivateKeyInfo
import org.bouncycastle.openssl.PEMParser
import org.bouncycastle.openssl.jcajce.JcaPEMKeyConverter
import org.bouncycastle.jce.provider.BouncyCastleProvider

/**
 * APK Signing Service using Android apksig library
 * Supports v1, v2, v3, and v4 signature schemes
 * 
 * Based on ApkRepacker's SignUtil implementation with enhancements
 */
class ApkSignerService(private val context: Context) {
    
    companion object {
        private const val TAG = "ApkSignerService"
        
        init {
            // Register BouncyCastle security provider
            Security.addProvider(BouncyCastleProvider())
        }
    }
    
    data class SigningConfig(
        val privateKey: PrivateKey,
        val certificate: X509Certificate,
        val v1SigningEnabled: Boolean = true,
        val v2SigningEnabled: Boolean = true,
        val v3SigningEnabled: Boolean = true,
        val v4SigningEnabled: Boolean = false,
        val createdBy: String = "Droid Analyst APK Editor"
    )
    
    interface SigningCallback {
        fun onProgress(message: String)
        fun onError(message: String)
        fun onComplete(outputPath: String)
    }
    
    /**
     * Sign an APK file with custom signing configuration
     */
    fun signApk(
        inputApk: File,
        outputApk: File,
        config: SigningConfig,
        minSdkVersion: Int = 21,
        callback: SigningCallback? = null
    ): Boolean {
        return try {
            Log.i(TAG, "Signing APK: ${inputApk.absolutePath}")
            callback?.onProgress("Starting APK signing...")
            
            // Delete existing output file
            if (outputApk.exists()) {
                outputApk.delete()
            }
            
            // Ensure output directory exists
            outputApk.parentFile?.mkdirs()
            
            // Create signer config
            val signerConfig = ApkSigner.SignerConfig.Builder(
                "CERT",
                config.privateKey,
                listOf(config.certificate)
            ).build()
            
            // Build APK signer
            val apkSigner = ApkSigner.Builder(listOf(signerConfig))
                .setInputApk(inputApk)
                .setOutputApk(outputApk)
                .setCreatedBy(config.createdBy)
                .setMinSdkVersion(minSdkVersion)
                .setV1SigningEnabled(config.v1SigningEnabled)
                .setV2SigningEnabled(config.v2SigningEnabled)
                .setV3SigningEnabled(config.v3SigningEnabled)
                .setV4SigningEnabled(config.v4SigningEnabled)
                .build()
            
            callback?.onProgress("Signing APK...")
            
            // Sign the APK
            apkSigner.sign()
            
            Log.i(TAG, "APK signed successfully: ${outputApk.absolutePath} (${outputApk.length()} bytes)")
            callback?.onProgress("APK signed successfully!")
            callback?.onComplete(outputApk.absolutePath)
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Signing failed: ${e.message}", e)
            callback?.onError("Signing failed: ${e.message}")
            false
        }
    }
    
    /**
     * Sign APK with default test key (built-in debug key)
     */
    fun signApkWithTestKey(
        inputApk: File,
        outputApk: File,
        minSdkVersion: Int = 21,
        callback: SigningCallback? = null
    ): Boolean {
        return try {
            // Load default test key from assets
            val keyStream = context.assets.open("testkey.pk8")
            val certStream = context.assets.open("testkey.x509.pem")
            
            val privateKey = loadPrivateKey(keyStream)
            val certificate = loadCertificate(certStream)
            
            keyStream.close()
            certStream.close()
            
            val config = SigningConfig(
                privateKey = privateKey,
                certificate = certificate,
                v1SigningEnabled = true,
                v2SigningEnabled = true,
                v3SigningEnabled = false,
                v4SigningEnabled = false
            )
            
            signApk(inputApk, outputApk, config, minSdkVersion, callback)
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to sign with test key: ${e.message}", e)
            
            // Fallback: Generate temporary key if test key not available
            try {
                Log.i(TAG, "Test key not found, generating temporary key...")
                val (privateKey, certificate) = generateTemporaryKey()
                val config = SigningConfig(
                    privateKey = privateKey,
                    certificate = certificate
                )
                signApk(inputApk, outputApk, config, minSdkVersion, callback)
            } catch (genEx: Exception) {
                Log.e(TAG, "Failed to generate temporary key: ${genEx.message}", genEx)
                callback?.onError("Signing failed: ${genEx.message}")
                false
            }
        }
    }
    
    /**
     * Verify APK signature
     */
    fun verifyApkSignature(apkFile: File): SignatureInfo {
        return try {
            val apkVerifier = com.android.apksig.ApkVerifier.Builder(apkFile).build()
            val result = apkVerifier.verify()
            
            SignatureInfo(
                isValid = result.isVerified,
                v1SchemeSignerName = result.v1SchemeSigners.firstOrNull()?.name,
                v2Verified = result.isVerifiedUsingV2Scheme,
                v3Verified = result.isVerifiedUsingV3Scheme,
                v4Verified = result.isVerifiedUsingV4Scheme,
                errors = result.errors.map { it.toString() },
                warnings = result.warnings.map { it.toString() }
            )
            
        } catch (e: Exception) {
            Log.e(TAG, "Signature verification failed: ${e.message}", e)
            SignatureInfo(
                isValid = false,
                errors = listOf(e.message ?: "Unknown error")
            )
        }
    }
    
    /**
     * Load private key from PEM or DER format
     */
    private fun loadPrivateKey(inputStream: InputStream): PrivateKey {
        return try {
            // Try PEM format first
            val pemParser = PEMParser(InputStreamReader(inputStream))
            val pemObject = pemParser.readObject()
            pemParser.close()
            
            when (pemObject) {
                is PrivateKeyInfo -> {
                    val converter = JcaPEMKeyConverter().setProvider("BC")
                    converter.getPrivateKey(pemObject)
                }
                else -> {
                    // Try DER format (PKCS8)
                    inputStream.reset()
                    val keyBytes = inputStream.readBytes()
                    val spec = PKCS8EncodedKeySpec(keyBytes)
                    val keyFactory = KeyFactory.getInstance("RSA")
                    keyFactory.generatePrivate(spec)
                }
            }
        } catch (e: Exception) {
            // Fallback to PKCS8 DER format
            inputStream.reset()
            val keyBytes = inputStream.readBytes()
            val spec = PKCS8EncodedKeySpec(keyBytes)
            val keyFactory = KeyFactory.getInstance("RSA")
            keyFactory.generatePrivate(spec)
        }
    }
    
    /**
     * Load X509 certificate from PEM or DER format
     */
    private fun loadCertificate(inputStream: InputStream): X509Certificate {
        val certFactory = CertificateFactory.getInstance("X.509")
        return certFactory.generateCertificate(inputStream) as X509Certificate
    }
    
    /**
     * Load key from KeyStore (JKS, PKCS12, BKS)
     */
    fun loadKeyFromKeyStore(
        keyStorePath: String,
        keyStoreType: String = "PKCS12",
        storePassword: CharArray,
        alias: String,
        keyPassword: CharArray = storePassword
    ): SigningConfig {
        val keyStore = KeyStore.getInstance(keyStoreType)
        FileInputStream(keyStorePath).use { fis ->
            keyStore.load(fis, storePassword)
        }
        
        val privateKey = keyStore.getKey(alias, keyPassword) as PrivateKey
        val certificate = keyStore.getCertificate(alias) as X509Certificate
        
        return SigningConfig(
            privateKey = privateKey,
            certificate = certificate
        )
    }
    
    /**
     * Generate temporary self-signed key for testing
     */
    private fun generateTemporaryKey(): Pair<PrivateKey, X509Certificate> {
        val keyPairGenerator = KeyPairGenerator.getInstance("RSA")
        keyPairGenerator.initialize(2048)
        val keyPair = keyPairGenerator.generateKeyPair()
        
        // Generate self-signed certificate
        val cert = generateSelfSignedCertificate(keyPair, "CN=Droid Analyst Debug")
        
        return Pair(keyPair.private, cert)
    }
    
    /**
     * Generate self-signed X509 certificate
     */
    private fun generateSelfSignedCertificate(
        keyPair: KeyPair,
        dn: String
    ): X509Certificate {
        // Use BouncyCastle to generate self-signed certificate
        val builder = org.bouncycastle.cert.jcajce.JcaX509v3CertificateBuilder(
            org.bouncycastle.asn1.x500.X500Name(dn),
            java.math.BigInteger.valueOf(System.currentTimeMillis()),
            java.util.Date(System.currentTimeMillis() - 1000L * 60 * 60 * 24),
            java.util.Date(System.currentTimeMillis() + 1000L * 60 * 60 * 24 * 365 * 30),
            org.bouncycastle.asn1.x500.X500Name(dn),
            keyPair.public
        )
        
        val signer = org.bouncycastle.operator.jcajce.JcaContentSignerBuilder("SHA256withRSA")
            .build(keyPair.private)
        
        val certHolder = builder.build(signer)
        val certFactory = CertificateFactory.getInstance("X.509")
        
        return certFactory.generateCertificate(
            ByteArrayInputStream(certHolder.encoded)
        ) as X509Certificate
    }
    
    /**
     * Get APK signature information
     */
    data class SignatureInfo(
        val isValid: Boolean,
        val v1SchemeSignerName: String? = null,
        val v2Verified: Boolean = false,
        val v3Verified: Boolean = false,
        val v4Verified: Boolean = false,
        val errors: List<String> = emptyList(),
        val warnings: List<String> = emptyList()
    )
}
