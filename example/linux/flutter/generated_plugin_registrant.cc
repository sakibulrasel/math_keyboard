//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <math_keyboard/math_keyboard_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) math_keyboard_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MathKeyboardPlugin");
  math_keyboard_plugin_register_with_registrar(math_keyboard_registrar);
}
