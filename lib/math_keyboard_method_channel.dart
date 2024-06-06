import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'math_keyboard_platform_interface.dart';

/// An implementation of [MathKeyboardPlatform] that uses method channels.
class MethodChannelMathKeyboard extends MathKeyboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('math_keyboard');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
