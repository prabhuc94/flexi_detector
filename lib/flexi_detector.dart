
import 'flexi_detector_platform_interface.dart';

class FlexiDetector {
  Future<String?> getPlatformVersion() {
    return FlexiDetectorPlatform.instance.getPlatformVersion();
  }
}
