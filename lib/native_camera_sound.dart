import 'native_camera_sound_platform_interface.dart';

class NativeCameraSound {
  static Future<void> playShutter() {
    return NativeCameraSoundPlatform.instance.playShutter();
  }

  static Future<void> playStartRecord() {
    return NativeCameraSoundPlatform.instance.playStartRecord();
  }

  static Future<void> playStopRecord() {
    return NativeCameraSoundPlatform.instance.playStopRecord();
  }
}
