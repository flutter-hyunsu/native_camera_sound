import Flutter
import UIKit
import AVFoundation

public class SwiftNativeCameraSoundPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "native_camera_sound", binaryMessenger: registrar.messenger())
    let instance = SwiftNativeCameraSoundPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      // https://iphonedevwiki.net/index.php/AudioServices
      if(call.method == "playShutter"){
        playSound(1108)
      }
      else if(call.method == "playStartRecord") {
        playSound(1117)
      }
      else if(call.method == "playStopRecord") {
        playSound(1118)
      }
  }

  func playSound(_ soundId: UInt32) {
    if #available(iOS 9.0, *) {
        AudioServicesPlaySystemSoundWithCompletion(SystemSoundID(soundId), nil)
    } else {
        AudioServicesPlaySystemSound(soundId)
    }
  }
}
