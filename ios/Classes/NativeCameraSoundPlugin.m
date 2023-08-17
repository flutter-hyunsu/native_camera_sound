#import "NativeCameraSoundPlugin.h"
#if __has_include(<native_camera_sound/native_camera_sound-Swift.h>)
#import <native_camera_sound/native_camera_sound-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_camera_sound-Swift.h"
#endif

@implementation NativeCameraSoundPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeCameraSoundPlugin registerWithRegistrar:registrar];
}
@end
