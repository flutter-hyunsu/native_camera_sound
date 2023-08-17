import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:native_camera_sound/native_camera_sound_method_channel.dart';

void main() {
  MethodChannelNativeCameraSound platform = MethodChannelNativeCameraSound();
  const MethodChannel channel = MethodChannel('native_camera_sound');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('playShutter', () async {
    await platform.playShutter();
  });
  test('playStartRecord', () async {
    await platform.playStartRecord();
  });
  test('playStopRecord', () async {
    await platform.playStopRecord();
  });
}
