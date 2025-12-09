# Automates device validation of repacked APKs: install, run, and collect logs.
# Usage:
#   pwsh -File scripts/device_repacker_validate.ps1 -ApkPath "C:\\path\\to\\app-repacked.apk" -PackageName "com.example.app" -MainActivity "com.example.app.MainActivity"
# Requires: ADB in PATH, device connected, USB debugging enabled.

param(
    [Parameter(Mandatory=$true)] [string] $ApkPath,
    [Parameter(Mandatory=$true)] [string] $PackageName,
    [Parameter(Mandatory=$true)] [string] $MainActivity,
    [int] $LaunchWaitSeconds = 10,
    [switch] $GrantStorage
)

$ErrorActionPreference = "Stop"

function Ensure-AdbReady {
    try {
        $out = adb devices | Out-String
        if ($out -notmatch "\n\s*\S+\s+device") {
            throw "No device connected or unauthorized. Output:`n$out"
        }
    } catch {
        throw "ADB not ready: $_"
    }
}

function Install-Apk($path) {
    Write-Host "Installing APK: $path" -ForegroundColor Cyan
    $res = adb install -r "$path" | Out-String
    Write-Host $res
    if ($res -match "Failure") { throw "Install failed: $res" }
}

function Grant-Permissions($pkg) {
    if (-not $GrantStorage) { return }
    Write-Host "Granting permissions to $pkg" -ForegroundColor Cyan
    adb shell pm grant $pkg android.permission.READ_EXTERNAL_STORAGE | Out-String | Write-Output
    adb shell pm grant $pkg android.permission.WRITE_EXTERNAL_STORAGE | Out-String | Write-Output
    adb shell pm grant $pkg android.permission.MANAGE_EXTERNAL_STORAGE | Out-String | Write-Output
}

function Clear-Logs {
    adb logcat -c | Out-Null
}

function Launch-App($pkg, $activity) {
    Write-Host "Launching $pkg/$activity" -ForegroundColor Cyan
    adb shell am start -n "$pkg/$activity" | Out-String | Write-Output
    Start-Sleep -Seconds $LaunchWaitSeconds
}

function Collect-Logs($pkg) {
    Write-Host "Collecting logs for $pkg (15s)" -ForegroundColor Cyan
    $job = Start-Job -ScriptBlock {
        adb logcat -v time
    }
    Start-Sleep -Seconds 15
    Stop-Job $job -Force | Out-Null
    $logs = Receive-Job $job | Out-String
    $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $outDir = Join-Path $PSScriptRoot "..\build_output.txt"
    Set-Content -Path $outDir -Value $logs
    Write-Host "Logs saved to $outDir" -ForegroundColor Green
}

try {
    Ensure-AdbReady
    Clear-Logs
    Install-Apk $ApkPath
    Grant-Permissions $PackageName
    Launch-App $PackageName $MainActivity
    Collect-Logs $PackageName
    Write-Host "Device validation completed successfully" -ForegroundColor Green
} catch {
    Write-Host "Validation failed: $_" -ForegroundColor Red
    exit 1
}