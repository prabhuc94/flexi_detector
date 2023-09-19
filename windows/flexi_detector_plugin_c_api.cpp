#include "include/flexi_detector/flexi_detector_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flexi_detector_plugin.h"

void FlexiDetectorPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flexi_detector::FlexiDetectorPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
