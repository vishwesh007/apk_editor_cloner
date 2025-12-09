# PowerShell script to automate APK installation

# Function to check if adb is available
function Check-Adb {
    $adbPath = (Get-Command adb -ErrorAction SilentlyContinue).Path
    if (-not $adbPath) {
        Write-Host "adb not found in PATH. Attempting to locate adb in Android SDK..."
        $sdkPath = "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe"
        if (Test-Path $sdkPath) {
            Write-Host "adb found at $sdkPath"
            return $sdkPath
        } else {
            Write-Host "adb not found. Please ensure it is installed and added to PATH."
            exit 1
        }
    }
    return $adbPath
}

# Function to install APK
function Install-Apk {
    param (
        [string]$ApkPath
    )

    $adb = Check-Adb
    Write-Host "Using adb at $adb"

    # Install the APK
    & $adb install -r $ApkPath
    if ($LASTEXITCODE -eq 0) {
        Write-Host "APK installed successfully."
    } else {
        Write-Host "Failed to install APK. Exit code: $LASTEXITCODE"
        exit $LASTEXITCODE
    }
}

# Main script
$apkPath = "build/app/outputs/flutter-apk/app-debug.apk"
if (-not (Test-Path $apkPath)) {
    Write-Host "APK not found at $apkPath. Please build the app first."
    exit 1
}

Install-Apk -ApkPath $apkPath