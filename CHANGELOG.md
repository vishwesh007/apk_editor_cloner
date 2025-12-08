# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]
- Ongoing development and minor fixes.

## [2.2.0] - 2025-12-08
### Added
- Integrated ApkRepacker-style APK decompilation and build support with native Android smali/dexlib2 libraries.
- New `ApkToolService.kt` for native decode/build operations.
- New Flutter UI screen `ApkRepackerScreen` for decompile/build flow.
- Dart `apk_tool_service.dart` to wrap platform channel calls with progress reporting.
- Added isolate/compute optimizations for JSON and APK parsing.

### Changed
- Bumped version to `2.2.0+6`.
- Improved navigation and added Repacker tab.

### Fixed
- Fixed Kotlin Smali assembly API usage while building DEX files.

## [2.1.0] - 2025-12-xx
- Initial reworked integration and other minor improvements.

