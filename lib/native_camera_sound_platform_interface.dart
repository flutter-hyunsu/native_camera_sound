import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_camera_sound_method_channel.dart';

abstract class NativeCameraSoundPlatform extends PlatformInterface {
  /// Constructs a NativeCameraSoundPlatform.
  NativeCameraSoundPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeCameraSoundPlatform _instance =
      MethodChannelNativeCameraSound();

  /// The default instance of [NativeCameraSoundPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeCameraSound].
  static NativeCameraSoundPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeCameraSoundPlatform] when
  /// they register themselves.
  static set instance(NativeCameraSoundPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> playShutter() {
    throw UnimplementedError('playShutter() has not been implemented.');
  }

  Future<void> playStartRecord() {
    throw UnimplementedError('playStartRecord() has not been implemented.');
  }

  Future<void> playStopRecord() {
    throw UnimplementedError('playStopRecord() has not been implemented.');
  }
}
