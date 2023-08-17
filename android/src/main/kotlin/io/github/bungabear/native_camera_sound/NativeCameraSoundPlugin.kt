package io.github.bungabear.native_camera_sound

import android.media.MediaActionSound
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


/** NativeCameraSoundPlugin */
class NativeCameraSoundPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "native_camera_sound")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    // https://developer.android.com/reference/android/media/MediaActionSound
    if (call.method == "playShutter") {
      val sound = MediaActionSound()
      sound.play(MediaActionSound.SHUTTER_CLICK)
    }
    else if(call.method == "playStartRecord") {
      val sound = MediaActionSound()
      sound.play(MediaActionSound.START_VIDEO_RECORDING)
    }
    else if(call.method == "playStopRecord") {
      val sound = MediaActionSound()
      sound.play(MediaActionSound.STOP_VIDEO_RECORDING)
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
