#include "include/custom_text_form_field_plus/custom_text_form_field_plus_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "custom_text_form_field_plus_plugin.h"

void CustomTextFormFieldPlusPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  custom_text_form_field_plus::CustomTextFormFieldPlusPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
