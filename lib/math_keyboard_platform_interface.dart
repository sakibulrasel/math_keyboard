import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'math_keyboard_method_channel.dart';

abstract class MathKeyboardPlatform extends PlatformInterface {
  /// Constructs a MathKeyboardPlatform.
  MathKeyboardPlatform() : super(token: _token);

  static final Object _token = Object();

  static MathKeyboardPlatform _instance = MethodChannelMathKeyboard();

  /// The default instance of [MathKeyboardPlatform] to use.
  ///
  /// Defaults to [MethodChannelMathKeyboard].
  static MathKeyboardPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MathKeyboardPlatform] when
  /// they register themselves.
  static set instance(MathKeyboardPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
