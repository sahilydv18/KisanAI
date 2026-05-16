# CI Builds (Android + iOS)

This repo includes a GitHub Actions workflow to build **Android debug APK** and **iOS debug app**.

## ✅ What it builds
- **Android:** `app-debug.apk` (installable on Android devices)
- **iOS:** `Runner.app` (debug build, **no codesign**) — suitable for **simulator testing**

> ⚠️ **Note:** Generating a real `.ipa` requires Apple signing certificates & provisioning profiles. The workflow currently builds a debug `.app` only.

## How to run
Go to **Actions → Mobile Debug Builds → Run workflow**.

Artifacts:
- `kisanai-debug-apk`
- `kisanai-ios-debug-app`
