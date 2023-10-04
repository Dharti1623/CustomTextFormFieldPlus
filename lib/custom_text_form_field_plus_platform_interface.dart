import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'custom_text_form_field_plus_method_channel.dart';

abstract class CustomTextFormFieldPlusPlatform extends PlatformInterface {
  /// Constructs a CustomTextFormFieldPlusPlatform.
  CustomTextFormFieldPlusPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomTextFormFieldPlusPlatform _instance =
      MethodChannelCustomTextFormFieldPlus();

  /// The default instance of [CustomTextFormFieldPlusPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomTextFormFieldPlus].
  static CustomTextFormFieldPlusPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CustomTextFormFieldPlusPlatform] when
  /// they register themselves.
  static set instance(CustomTextFormFieldPlusPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
