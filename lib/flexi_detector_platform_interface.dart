import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flexi_detector_method_channel.dart';

abstract class FlexiDetectorPlatform extends PlatformInterface {
  /// Constructs a FlexiDetectorPlatform.
  FlexiDetectorPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlexiDetectorPlatform _instance = MethodChannelFlexiDetector();

  /// The default instance of [FlexiDetectorPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlexiDetector].
  static FlexiDetectorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlexiDetectorPlatform] when
  /// they register themselves.
  static set instance(FlexiDetectorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
