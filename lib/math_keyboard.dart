
import 'math_keyboard_platform_interface.dart';

class MathKeyboard {
  Future<String?> getPlatformVersion() {
    return MathKeyboardPlatform.instance.getPlatformVersion();
  }
}
