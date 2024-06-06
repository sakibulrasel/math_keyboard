#ifndef FLUTTER_PLUGIN_MATH_KEYBOARD_PLUGIN_H_
#define FLUTTER_PLUGIN_MATH_KEYBOARD_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace math_keyboard {

class MathKeyboardPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MathKeyboardPlugin();

  virtual ~MathKeyboardPlugin();

  // Disallow copy and assign.
  MathKeyboardPlugin(const MathKeyboardPlugin&) = delete;
  MathKeyboardPlugin& operator=(const MathKeyboardPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace math_keyboard

#endif  // FLUTTER_PLUGIN_MATH_KEYBOARD_PLUGIN_H_
