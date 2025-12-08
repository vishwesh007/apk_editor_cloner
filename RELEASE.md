Release process and versioning guidelines

We follow Semantic Versioning (SemVer): MAJOR.MINOR.PATCH+BUILD

- MAJOR: incompatible API changes, large refactors
- MINOR: new features and backwards compatible additions
- PATCH: bug fixes and minor changes
- BUILD: internal build number used by Flutter/Android (incremented on each CI or local build)

When releasing:
1. Update `pubspec.yaml` version field (e.g. `2.2.0+6`).
2. Update `CHANGELOG.md` with new entries under the version heading.
3. Commit the changes and push to `main`.
4. Create an annotated Git tag: `git tag -a vX.Y.Z -m "Release vX.Y.Z"`.
5. Push the tag: `git push origin vX.Y.Z`.
6. Create a GitHub release and attach artifacts (optional):
   - `gh release create vX.Y.Z -t "vX.Y.Z" -n "Some notes"`
   - `gh release upload vX.Y.Z path/to/artifact.apk`

Notes:
- Keep `pubspec.yaml` as the single source of truth for Flutter version.
- The Android build system auto-picks versionName and versionCode from the Flutter plugin.
- Consider using a release automation (GitHub Actions) to build and publish assets automatically after tagging.

