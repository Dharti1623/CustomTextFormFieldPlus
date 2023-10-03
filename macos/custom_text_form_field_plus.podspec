#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint custom_text_form_field_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'custom_text_form_field_plus'
  s.version          = '0.0.1'
  s.summary          = 'Custom Text Form Field Plus - A Customizable Text Input Widget with Validation for Flutter'
  s.description      = <<-DESC
Custom Text Form Field Plus - A Customizable Text Input Widget with Validation for Flutter
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
