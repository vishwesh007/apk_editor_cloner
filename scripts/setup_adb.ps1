# Downloads and sets up Android platform-tools (adb) for the current user.
param(
    [string]$InstallDir = "$($env:LOCALAPPDATA)\Android\platform-tools",
    [string]$DownloadUrl = "https://dl.google.com/android/repository/platform-tools-latest-windows.zip"
)
$ErrorActionPreference = "Stop"

function Get-AdbPath {
    $cmd = Get-Command adb -ErrorAction SilentlyContinue
    if ($cmd) { return $cmd.Path }
    $candidate = Join-Path $InstallDir "adb.exe"
    if (Test-Path $candidate) { return $candidate }
    return $null
}

function Add-ToUserPath {
    param([string]$Dir)
    $userPath = [Environment]::GetEnvironmentVariable("Path", "User")
    $parts = @()
    if ($userPath) { $parts = $userPath -split ';' | Where-Object { $_ } }
    if ($parts -contains $Dir) { return }
    $newPath = @($parts + $Dir) -join ';'
    [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
    if ($env:Path -notlike "*$Dir*") { $env:Path += ";$Dir" }
    Write-Host "Added $Dir to user PATH. Restart terminals to pick up the change."
}

function Download-And-Install {
    if (Test-Path $InstallDir) {
        Write-Host "Removing existing install at $InstallDir" -ForegroundColor Yellow
        Remove-Item $InstallDir -Recurse -Force
    }
    $tempRoot = Join-Path $env:TEMP ("platform-tools-" + [guid]::NewGuid().ToString("N"))
    New-Item -ItemType Directory -Path $tempRoot | Out-Null
    $zipPath = Join-Path $tempRoot "platform-tools.zip"
    Write-Host "Downloading platform-tools..."
    Invoke-WebRequest -Uri $DownloadUrl -OutFile $zipPath -UseBasicParsing
    Write-Host "Extracting..."
    Expand-Archive -Path $zipPath -DestinationPath $tempRoot -Force
    $extracted = Join-Path $tempRoot "platform-tools"
    if (-not (Test-Path $extracted)) { throw "Extracted folder not found: $extracted" }
    Move-Item -Path $extracted -Destination $InstallDir
    Write-Host "Installed to $InstallDir"
}

$adbPath = Get-AdbPath
if (-not $adbPath) {
    Download-And-Install
    Add-ToUserPath -Dir $InstallDir
    $adbPath = Get-AdbPath
}

if (-not $adbPath) { throw "adb not found after install." }
Write-Host "adb ready at $adbPath"

Write-Host "Testing adb version..."
& $adbPath version
