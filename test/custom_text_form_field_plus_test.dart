// import 'package:flutter_test/flutter_test.dart';
// import 'package:custom_text_form_field_plus/custom_text_form_field_plus.dart';
// import 'package:custom_text_form_field_plus/custom_text_form_field_plus_platform_interface.dart';
// import 'package:custom_text_form_field_plus/custom_text_form_field_plus_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockCustomTextFormFieldPlusPlatform
//     with MockPlatformInterfaceMixin
//     implements CustomTextFormFieldPlusPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final CustomTextFormFieldPlusPlatform initialPlatform = CustomTextFormFieldPlusPlatform.instance;
//
//   test('$MethodChannelCustomTextFormFieldPlus is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelCustomTextFormFieldPlus>());
//   });
//
//   test('getPlatformVersion', () async {
//     CustomTextFormFieldPlus customTextFormFieldPlusPlugin = CustomTextFormFieldPlus();
//     MockCustomTextFormFieldPlusPlatform fakePlatform = MockCustomTextFormFieldPlusPlatform();
//     CustomTextFormFieldPlusPlatform.instance = fakePlatform;
//
//     expect(await customTextFormFieldPlusPlugin.getPlatformVersion(), '42');
//   });
// }
