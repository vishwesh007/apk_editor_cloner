plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.droid_analyst"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    packaging {
        resources {
            excludes += listOf(
                "META-INF/versions/9/OSGI-INF/MANIFEST.MF",
                "META-INF/BCKEY.DSA",
                "META-INF/BCKEY.SF"
            )
        }
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.droid_analyst"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("org.bouncycastle:bcprov-jdk18on:1.78.1")
    implementation("org.bouncycastle:bcpkix-jdk18on:1.78.1")
    // APK Signing Library (supports v1, v2, v3, v4 schemes)
    implementation("com.android.tools.build:apksig:8.7.3")
    
    // Smali/Baksmali libraries for native Android DEX manipulation
    // This allows us to decompile DEX -> smali, modify, and recompile without apktool
    implementation("com.android.tools.smali:smali:3.0.8")
    implementation("com.android.tools.smali:smali-baksmali:3.0.8")
    implementation("com.android.tools.smali:smali-dexlib2:3.0.8")
    
    // D8/R8 for JAR to DEX conversion (runs apktool.jar, etc. on Android)
    implementation("com.android.tools:r8:8.5.35")

    // Use Apktool-android's bundled jars for additional dependencies
    implementation(fileTree(mapOf(
        "dir" to "../apktool-android/apktool/libs",
        "include" to listOf("*.jar"),
        // Exclude jars that conflict with modern dependencies
        "exclude" to listOf(
            "annotations-*.jar",      // Conflicts with org.jetbrains:annotations
            "guava-*.jar",            // Conflicts with smali's guava
            "failureaccess-*.jar",
            "jsr305-*.jar",
            "apksigner.jar"           // We use com.android.tools.build:apksig instead
        )
    )))
}
