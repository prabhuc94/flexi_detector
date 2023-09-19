import 'package:flutter_test/flutter_test.dart';
import 'package:flexi_detector/flexi_detector.dart';
import 'package:flexi_detector/flexi_detector_platform_interface.dart';
import 'package:flexi_detector/flexi_detector_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlexiDetectorPlatform
    with MockPlatformInterfaceMixin
    implements FlexiDetectorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlexiDetectorPlatform initialPlatform = FlexiDetectorPlatform.instance;

  test('$MethodChannelFlexiDetector is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlexiDetector>());
  });

  test('getPlatformVersion', () async {
    FlexiDetector flexiDetectorPlugin = FlexiDetector();
    MockFlexiDetectorPlatform fakePlatform = MockFlexiDetectorPlatform();
    FlexiDetectorPlatform.instance = fakePlatform;

    expect(await flexiDetectorPlugin.getPlatformVersion(), '42');
  });
}
