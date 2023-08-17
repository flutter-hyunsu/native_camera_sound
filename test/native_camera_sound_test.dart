import 'package:flutter_test/flutter_test.dart';
import 'package:native_camera_sound/native_camera_sound_platform_interface.dart';
import 'package:native_camera_sound/native_camera_sound_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeCameraSoundPlatform
    with MockPlatformInterfaceMixin
    implements NativeCameraSoundPlatform {
  @override
  Future<void> playShutter() => Future.value();
  @override
  Future<void> playStartRecord() => Future.value();
  @override
  Future<void> playStopRecord() => Future.value();
}

void main() {
  final NativeCameraSoundPlatform initialPlatform =
      NativeCameraSoundPlatform.instance;

  test('$MethodChannelNativeCameraSound is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeCameraSound>());
  });
}
