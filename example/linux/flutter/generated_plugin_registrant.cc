//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <custom_text_form_field_plus/custom_text_form_field_plus_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) custom_text_form_field_plus_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CustomTextFormFieldPlusPlugin");
  custom_text_form_field_plus_plugin_register_with_registrar(custom_text_form_field_plus_registrar);
}
