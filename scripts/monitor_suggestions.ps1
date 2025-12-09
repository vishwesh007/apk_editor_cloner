# Polls test/suggestions.md every 60 seconds and prints changes with timestamps.
# Usage: pwsh -File scripts/monitor_suggestions.ps1

$ErrorActionPreference = "Stop"
$SuggestionsPath = Join-Path $PSScriptRoot "..\test\suggestions.md"
if (-not (Test-Path $SuggestionsPath)) {
    Write-Host "Suggestions file not found: $SuggestionsPath" -ForegroundColor Red
    exit 1
}

$lastHash = ""
function Get-FileHashString($path) {
    try {
        $h = Get-FileHash -Path $path -Algorithm SHA256
        return $h.Hash
    } catch {
        return ""
    }
}

Write-Host "Monitoring suggestions at $SuggestionsPath (Ctrl+C to stop)" -ForegroundColor Cyan

while ($true) {
    $hash = Get-FileHashString $SuggestionsPath
    if ($hash -ne $lastHash) {
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
        Write-Host "[$timestamp] suggestions.md changed" -ForegroundColor Yellow
        try {
            $content = Get-Content -Path $SuggestionsPath -Raw
            Write-Host "--- Begin suggestions.md ---" -ForegroundColor DarkGray
            Write-Output $content
            Write-Host "--- End suggestions.md ---" -ForegroundColor DarkGray
        } catch {
            Write-Host "Failed to read suggestions.md: $_" -ForegroundColor Red
        }
        $lastHash = $hash
    }
    Start-Sleep -Seconds 60
}