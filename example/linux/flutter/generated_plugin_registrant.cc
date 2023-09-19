//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <flexi_detector/flexi_detector_plugin.h>
#include <hid_listener/hid_listener_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) flexi_detector_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlexiDetectorPlugin");
  flexi_detector_plugin_register_with_registrar(flexi_detector_registrar);
  g_autoptr(FlPluginRegistrar) hid_listener_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "HidListenerPlugin");
  hid_listener_plugin_register_with_registrar(hid_listener_registrar);
}
