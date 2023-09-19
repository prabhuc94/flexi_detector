//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flexi_detector/flexi_detector_plugin_c_api.h>
#include <hid_listener/hid_listener_plugin_windows.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FlexiDetectorPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FlexiDetectorPluginCApi"));
  HidListenerPluginWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("HidListenerPluginWindows"));
}
