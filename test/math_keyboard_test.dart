import 'package:flutter_test/flutter_test.dart';
import 'package:math_keyboard/math_keyboard.dart';
import 'package:math_keyboard/math_keyboard_platform_interface.dart';
import 'package:math_keyboard/math_keyboard_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMathKeyboardPlatform
    with MockPlatformInterfaceMixin
    implements MathKeyboardPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MathKeyboardPlatform initialPlatform = MathKeyboardPlatform.instance;

  test('$MethodChannelMathKeyboard is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMathKeyboard>());
  });

  test('getPlatformVersion', () async {
    MathKeyboard mathKeyboardPlugin = MathKeyboard();
    MockMathKeyboardPlatform fakePlatform = MockMathKeyboardPlatform();
    MathKeyboardPlatform.instance = fakePlatform;

    expect(await mathKeyboardPlugin.getPlatformVersion(), '42');
  });
}
