# native_camera_sound

A simple flutter plugin, that lets you play the native camera sound for iOS and Android.

Support camera shutter and video record sound.

Forked from [native_shutter_sound](https://github.com/HTMHell/native_shutter_sound)

This plugin can be useful if you develop a custom camera screen, and you want to play the default shutter sound and record sound you get when you take a photo using the camera app on the device.

## Getting Started

First, add `native_camera_sound` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/platform-integration/platform-channels).

### Example

``` dart
import 'package:native_camera_sound/native_camera_sound.dart';
    ...
     ElevatedButton(
       onPressed: () {
         NativeCameraSound.playShutter();
       },
       child: const Text('Play Shutter Sound'),
     ),
     ElevatedButton(
       onPressed: () {
         NativeCameraSound.playStartRecord();
       },
       child: const Text('Play Start Record Sound'),
     ),
     ElevatedButton(
       onPressed: () {
         NativeCameraSound.playStopRecord();
       },
       child: const Text('Play Stop Record Sound'),
     ),
    ...
```
