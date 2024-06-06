#include "include/math_keyboard/math_keyboard_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "math_keyboard_plugin.h"

void MathKeyboardPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  math_keyboard::MathKeyboardPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
