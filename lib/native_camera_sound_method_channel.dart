import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_camera_sound_platform_interface.dart';

/// An implementation of [NativeCameraSoundPlatform] that uses method channels.
class MethodChannelNativeCameraSound extends NativeCameraSoundPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_camera_sound');

  @override
  Future<void> playShutter() {
    return methodChannel.invokeMethod<void>('playShutter');
  }
  @override
  Future<void> playStartRecord() {
    return methodChannel.invokeMethod<void>('playStartRecord');
  }
  @override
  Future<void> playStopRecord() {
    return methodChannel.invokeMethod<void>('playStopRecord');
  }
}
