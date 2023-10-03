import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'custom_text_form_field_plus_platform_interface.dart';

/// An implementation of [CustomTextFormFieldPlusPlatform] that uses method channels.
class MethodChannelCustomTextFormFieldPlus extends CustomTextFormFieldPlusPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('custom_text_form_field_plus');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
