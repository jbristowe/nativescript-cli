build ios
==========

Usage | Synopsis
---|---
General | `$ tns build ios [--for-device] [--release]`

Builds the project for iOS and produces an `APP` or `IPA` that you can manually deploy in the iOS Simulator or on device, respectively.

<% if(isConsole && (isWindows || isLinux)) { %>WARNING: You can run this command only on OS X systems. To view the complete help for this command, run `$ tns help build ios`<% } %> 
<% if((isConsole && isMacOS) || isHtml) { %>  
<% if(isHtml) { %>> <% } %>IMPORTANT: Before building for iOS device, verify that you have configured a valid pair of certificate and provisioning profile on your OS X system. <% if(isHtml) { %>For more information, see [Obtaining Signing Identities and Downloading Provisioning Profiles](https://developer.apple.com/library/mac/recipes/xcode_help-accounts_preferences/articles/obtain_certificates_and_provisioning_profiles.html).<% } %> 

### Options
* `--release` - If set, produces a release build. Otherwise, produces a debug build.
* `--for-device` - If set, produces an application package that you can deploy on device. Otherwise, produces a build that you can run only in the native iOS Simulator.
<% } %>
<% if(isHtml) { %> 
### Command Limitations

* You can run `$ tns build ios` only on OS X systems.

### Related Commands

Command | Description
----------|----------
[build android](build-android.html) | Builds the project for Android and produces an APK that you can manually deploy on device or in the native emulator.
[build](build.html) | Builds the project for the selected target platform and produces an application package that you can manually deploy on device or in the native emulator.
[debug android](debug-android.html) | Debugs your project on a connected Android device or in a native emulator.
[debug ios](debug-ios.html) | Debugs your project on a connected iOS device or in a native emulator.
[debug](debug.html) | Debugs your project on a connected device or in a native emulator.
[deploy](deploy.html) | Builds and deploys the project to a connected physical or virtual device.
[emulate android](emulate-android.html) | Builds the specified project and runs it in a native Android emulator.
[emulate ios](emulate-ios.html) | Builds the specified project and runs it in the native iOS Simulator.
[emulate](emulate.html) | You must run the emulate command with a related command.
[livesync](livesync.html) | Synchronizes the latest changes in your project to devices.
[livesync ios](livesync-ios.html) | Synchronizes the latest changes in your project to iOS devices.
[livesync android](livesync-android.html) | Synchronizes the latest changes in your project to Android devices.
[run android](run-android.html) | Runs your project on a connected Android device or in a native Android emulator, if configured.
[run ios](run-ios.html) | Runs your project on a connected iOS device or in the iOS Simulator, if configured.
[run](run.html) | Runs your project on a connected device or in the native emulator for the selected platform.
<% } %>