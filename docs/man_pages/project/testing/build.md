build
==========

Usage | Synopsis
---|---
<% if((isConsole && isMacOS) || isHtml) { %>General | `$ tns build <Platform>`<% } %><% if(isConsole && (isLinux || isWindows)) { %>General | `$ tns build android`<% } %>

Builds the project for Android <% if(isMacOS) { %>or iOS <% } %>and produces an application package that you can manually deploy on device or in the native emulator. <% if(isMacOS) { %>You must specify the target platform for which you want to build your project.<% } %>

<% if((isConsole && isMacOS) || isHtml) { %>### Attributes
`<Platform>` is the target mobile platform for which you want to build your project. You can set the following target platforms.
* `android` - Builds the project for Android and produces an `APK` that you can manually deploy on device or in the native emulator.
* `ios` - Builds the project for iOS and produces an `APP` or `IPA` that you can manually deploy in the iOS Simulator or on device, respectively.<% } %> 

<% if(isHtml) { %> 
### Command Limitations

* You can run `$ tns build ios` only on OS X systems.

### Related Commands

Command | Description
----------|----------
[build android](build-android.html) | Builds the project for Android and produces an APK that you can manually deploy on device or in the native emulator.
[build ios](build-ios.html) | Builds the project for iOS and produces an APP or IPA that you can manually deploy in the iOS Simulator or on device, respectively.
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