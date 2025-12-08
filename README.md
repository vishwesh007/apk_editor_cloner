# DroidAnalyst 🔍

A Flutter-based Android malware analysis dashboard for security researchers. This tool helps analyze Android applications through static analysis and dynamic instrumentation using Frida on **controlled devices you own**.

## Release
This repository uses Semantic Versioning and GitHub Releases. The latest packaged release is **v2.2.0** (2025-12-08), which includes a new APK Repacker feature (decompile/build) and performance improvements.

![DroidAnalyst](https://img.shields.io/badge/Platform-Android%20%7C%20Windows%20%7C%20macOS%20%7C%20Linux-blue)
![Flutter](https://img.shields.io/badge/Flutter-3.0+-02569B)
![License](https://img.shields.io/badge/License-MIT-green)

## ⚠️ Legal Disclaimer

This tool is intended for:
- Security researchers analyzing malware samples in controlled environments
- Developers testing their own applications
- Penetration testers with explicit written authorization

**DO NOT** use this tool on applications you don't own or have permission to test.

## 🎯 Running Modes

### Android App (Recommended)
When running directly on an Android device/emulator:
- **Apps Tab**: Lists all installed applications with permissions
- **Analyze Tab**: Analyze APK files stored on the device
- Uses Android native APIs (no ADB needed)
- Pure Dart APK manifest parsing

### Desktop App
When running on Windows/macOS/Linux:
- **Devices Tab**: Connect to Android devices via ADB
- **APK Tab**: Analyze APK files from your computer
- Full ADB command support
- Requires connected Android device

## Features

### 📱 Installed Apps Browser (Android Mode)
- View all installed applications on device
- Filter user apps vs system apps
- Search by app name or package name
- View permissions for each app
- Analyze any installed app's APK directly
- Device information display

### 🔍 Static APK Analysis
- Extract package information (name, version, SDK levels)
- List permissions with dangerous permission highlighting
- Enumerate components (Activities, Services, Receivers, Providers)
- Detect native libraries
- Scan for suspicious patterns:
  - Dynamic code loading
  - Runtime command execution
  - Crypto usage
  - Device info access
  - Root/debugger detection
- Calculate risk scores
- Extract file hashes (MD5, SHA1, SHA256)

### 🐛 Frida Integration
#### Rooted Device Mode
- Built-in analysis scripts:
  - **HTTP Traffic Monitor** - Capture all HTTP/HTTPS requests
  - **File System Monitor** - Track file read/write operations
  - **Crypto Operations Monitor** - Capture encryption keys and operations
  - **API Call Tracer** - Log sensitive API calls (location, contacts, device info)
  - **Anti-Analysis Detector** - Detect root/debugger/Frida detection attempts
  - **SQLite Database Monitor** - Log database queries
- Custom script editor
- Attach to running processes or spawn new ones
- Real-time console output

#### 🆕 Non-Rooted Device Mode (Frida Gadget Injection)
- **No root required!** Inject Frida Gadget directly into APKs
- Automatic gadget download from official Frida releases
- Multi-architecture support (arm64-v8a, armeabi-v7a, x86_64, x86)
- Configurable gadget modes:
  - **Listen** - Gadget listens for Frida connection
  - **Connect** - Gadget connects to remote Frida server
  - **Script** - Run embedded script on startup
- APK repackaging with signature stripping
- Debug keystore signing for testing
- One-click patch, sign, and install workflow

### 🔧 APK Repacker (ApkTool Integration)
- **Full APK decompilation and rebuild capabilities**
- Decompile APK to smali source code
- Decode resources and manifest to human-readable format
- Edit decompiled files (smali, XML, resources)
- Rebuild modified APK from source
- Native Android implementation using Baksmali/Smali libraries
- File browser for decompiled projects

### 🔐 APK Signing (Official Android apksig Library)
- **Complete signing infrastructure with all modern signature schemes**
- APK Signature Scheme v1 (JAR signing) - All Android versions
- APK Signature Scheme v2 - Whole-file signature (Android 7.0+)
- APK Signature Scheme v3 - Key rotation support (Android 9.0+)
- APK Signature Scheme v4 - Streaming signature (Android 11+)
- Built-in test key for development and debugging
- Custom keystore support (JKS, PKCS12, BKS)
- Signature verification with detailed error reporting
- Self-signed certificate generation
- See [APK_SIGNING_GUIDE.md](APK_SIGNING_GUIDE.md) for detailed documentation

### 📊 Event Capture
- Real-time event stream from Frida hooks
- Filter events by type
- Search events
- Detailed event inspection with stack traces

### 📄 Reporting
- Export to JSON format
- Export to HTML report with styling
- Include/exclude analysis sections
- Event statistics

## 📁 Storage Paths on Android

Modern Android uses scoped storage. Common paths:
- `/storage/emulated/0/Download/` - User downloads
- `/sdcard/Download/` - Symlink to above
- `/data/local/tmp/` - Temporary storage (accessible via ADB)
- App APKs are stored at paths like `/data/app/.../base.apk`

**Note**: `/sdcard/` is a symlink to `/storage/emulated/0/` on modern Android devices.

## Prerequisites

### For Android App
- Android device or emulator (API 21+)
- Flutter SDK 3.0+

### For Desktop App

1. **Flutter SDK** (3.0+)
   ```bash
   flutter --version
   ```

2. **Android SDK & ADB**
   ```bash
   # Verify ADB is installed
   adb --version
   ```

3. **Frida** (for dynamic analysis)
   ```bash
   # Install Frida tools
   pip install frida-tools
   
   # Verify installation
   frida --version
   ```

4. **Frida Server** on target device
   ```bash
   # Download matching frida-server for your device architecture
   # https://github.com/frida/frida/releases
   
   # Push to device
   adb push frida-server /data/local/tmp/
   adb shell chmod 755 /data/local/tmp/frida-server
   
   # Start (requires root)
   adb shell su -c '/data/local/tmp/frida-server &'
   ```

5. **AAPT2** (for desktop APK parsing - optional) - Usually included with Android SDK
   ```bash
   aapt2 version
   ```
   Note: On Android, the app uses a pure Dart manifest parser and doesn't require aapt2.

## Installation

### Android App
```bash
# Clone the repository
git clone https://github.com/vishwesh007/apk_editor_cloner.git
cd apk_editor_cloner

# Get dependencies
flutter pub get

# Build APK
flutter build apk --debug

# Install on device/emulator
adb install build/app/outputs/flutter-apk/app-debug.apk
```

### Desktop App
```bash
# Clone the repository
git clone https://github.com/vishwesh007/apk_editor_cloner.git
cd apk_editor_cloner

# Get dependencies
flutter pub get

# Run the application
flutter run -d windows  # or macos, linux
```

## Usage

### 1. Connect Your Device

1. Enable USB debugging on your Android device
2. Connect via USB or setup ADB over WiFi
3. Accept the debugging authorization on the device
4. The device should appear in the "Devices" tab

### 2. Setup Frida (for Dynamic Analysis)

#### Option A: Rooted Device (Traditional Method)

For rooted devices, install frida-server:

```bash
# Push frida-server to device
adb push frida-server-android-arm64 /data/local/tmp/frida-server
adb shell chmod 755 /data/local/tmp/frida-server

# Start frida-server (requires root)
adb shell su -c '/data/local/tmp/frida-server -D &'
```

#### Option B: Non-Rooted Device (Gadget Injection) 🆕

For non-rooted devices, use the built-in Gadget Injection feature:

1. Go to **Frida** tab → Click **"Inject Gadget"** button
2. Select the APK you want to instrument
3. Configure the gadget (optional - defaults work for most cases):
   ```json
   {
     "interaction": {
       "type": "listen",
       "address": "127.0.0.1",
       "port": 27042,
       "on_load": "wait"
     }
   }
   ```
4. Click **"Patch APK"** - this will:
   - Extract the APK
   - Inject `frida-gadget.so` into native lib folders
   - Add INTERNET permission to manifest
   - Create a loader class
   - Repackage the APK
5. Click **"Sign APK"** to sign with debug keystore
6. Click **"Install"** to deploy to device
7. Launch the patched app - it will wait for Frida to connect
8. Connect from your computer:
   ```bash
   # Forward the gadget port
   adb forward tcp:27042 tcp:27042
   
   # Connect with Frida
   frida -H 127.0.0.1:27042 Gadget
   ```

### 3. Analyze an APK

1. Go to "APK Analysis" tab
2. Click "Select APK" and choose an APK file
3. Review the static analysis results:
   - Package information
   - Permissions (dangerous ones highlighted)
   - Suspicious indicators
   - Risk score

### 4. Dynamic Analysis with Frida

1. Install the APK on your device
2. Go to "Frida" tab
3. Select a built-in script or create a custom one
4. Click "Refresh" to load running processes
5. Select your target process
6. Click "Attach" or "Spawn" to begin analysis
7. View captured events in the "Events" tab

### 5. Export Report

1. Go to "Reports" tab
2. Select which data to include
3. Export as JSON or HTML

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   ├── device.dart          # Android device model
│   ├── apk_info.dart        # APK analysis model
│   ├── frida_script.dart    # Frida script model
│   └── captured_event.dart  # Event capture model
├── providers/
│   ├── device_provider.dart    # Device state management
│   ├── analysis_provider.dart  # APK analysis state
│   └── frida_provider.dart     # Frida state management
├── services/
│   ├── adb_service.dart           # ADB command execution
│   ├── frida_service.dart         # Frida interaction
│   ├── apk_analyzer_service.dart  # Static analysis
│   ├── android_manifest_parser.dart # Pure Dart AXML parser
│   ├── android_platform_service.dart # Android native APIs
│   ├── frida_gadget_service.dart  # Gadget download & management
│   └── apk_patcher_service.dart   # APK injection & repackaging
├── screens/
│   ├── home_screen.dart           # Main navigation
│   ├── device_screen.dart         # Device management
│   ├── apk_analysis_screen.dart   # Static analysis
│   ├── frida_screen.dart          # Frida scripts
│   ├── events_screen.dart         # Event viewer
│   ├── reports_screen.dart        # Report export
│   ├── installed_apps_screen.dart # Installed apps browser
│   └── gadget_injection_screen.dart # Frida Gadget injection UI
└── widgets/
    ├── status_bar.dart         # Status bar widget
    └── code_editor.dart        # Script editor
```

## Built-in Frida Scripts

### HTTP Traffic Monitor
Hooks `HttpURLConnection` and `WebView` to capture network requests.

### File System Monitor
Hooks `FileInputStream` and `FileOutputStream` to track file operations.

### Crypto Operations Monitor
Hooks `javax.crypto.Cipher` and `SecretKeySpec` to capture encryption keys.

### API Call Tracer
Hooks sensitive APIs:
- `LocationManager.getLastKnownLocation`
- `ContentResolver.query`
- `TelephonyManager.getDeviceId/getSubscriberId`
- `SharedPreferences.getString`

### Anti-Analysis Detector
Detects attempts to check for:
- Debugger connection
- Root (su binary checks)
- Frida presence

### SQLite Database Monitor
Hooks SQLite operations: `rawQuery`, `execSQL`, `insert`

## Frida Gadget Configuration

The Gadget Injection feature supports multiple interaction modes:

### Listen Mode (Default)
Gadget listens for incoming Frida connections:
```json
{
  "interaction": {
    "type": "listen",
    "address": "127.0.0.1",
    "port": 27042,
    "on_load": "wait"
  }
}
```

### Connect Mode
Gadget connects to a remote Frida server:
```json
{
  "interaction": {
    "type": "connect",
    "address": "192.168.1.100",
    "port": 27042
  }
}
```

### Script Mode
Run an embedded script automatically on app start:
```json
{
  "interaction": {
    "type": "script",
    "path": "/data/local/tmp/hook.js",
    "on_change": "reload"
  }
}
```

### Gadget Injection Process

1. **APK Extraction** - Unpacks the target APK
2. **Gadget Download** - Downloads matching Frida Gadget for device architecture
3. **Native Library Injection** - Copies `libfrida-gadget.so` to `lib/` folders
4. **Manifest Patching** - Adds INTERNET permission if missing
5. **Loader Injection** - Creates smali class to load the gadget
6. **Repackaging** - Rebuilds the APK with modifications
7. **Signing** - Signs with debug keystore for installation

## Screenshots

*Screenshots coming soon*

## Troubleshooting

### Gadget Injection Issues

**Q: App crashes after installing patched APK**
- Ensure the correct architecture is selected
- Try with a simpler app first
- Check logcat for errors: `adb logcat | grep -i frida`

**Q: Can't connect to gadget**
- Forward the port: `adb forward tcp:27042 tcp:27042`
- Ensure the app is running and waiting
- Check if gadget is in "wait" mode

**Q: APK installation fails**
- The patched APK needs to be signed
- Uninstall the original app first (signatures differ)
- Enable "Unknown sources" in device settings

### General Issues

**Q: No devices showing**
- Check ADB connection: `adb devices`
- Ensure USB debugging is enabled
- Accept the authorization prompt on device

**Q: Frida scripts not working**
- Verify frida-server version matches frida-tools
- Check if frida-server is running: `frida-ps -U`
- Ensure device is rooted (for server mode)

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

MIT License - see [LICENSE](LICENSE) for details.

## Acknowledgments

- [Frida](https://frida.re/) - Dynamic instrumentation toolkit
- [Flutter](https://flutter.dev/) - UI framework
- [Android SDK](https://developer.android.com/studio) - ADB tools

---

**Remember**: Only use this tool on devices and applications you have explicit permission to test