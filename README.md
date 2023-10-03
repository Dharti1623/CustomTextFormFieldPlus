# Custom Text Form Field Plus - A Customizable Text Input Widget with Validation for Flutter
   
   `custom_text_form_field_plus` is a customizable text input field widget for your Flutter project. It
   provides a feature-rich text input field with support for labels, hints, validation, and more. This
   widget simplifies the process of creating and customizing text input fields in your Flutter
   applications.

## Platform Support
   
   | Android | iOS | Web | MacOS | Linux | Windows |
   | :-----: | :-: | :---: | :-----: | :-: | :---: |
   | &#9989; | &#9989; | &#9989; | &#9989; | &#9989; | &#9989; |

### Installation
   
   To use `custom_text_form_field_plus` in your Flutter project, follow these steps:

   1. Add the package to your `pubspec.yaml` file and run `flutter pub get`:
   
       ```yaml
       dependencies:
         custom_text_form_field_plus: ^0.0.2  
       ```

   2. Import the package in your Dart code:

      ```dart
      import 'package:custom_text_form_field_plus/custom_text_form_field_plus.dart';
      ```

### Usage

To create a customized text input field with validation using `custom_text_form_field_plus`, you can
use the `CustomTextFormField` widget and the provided `Validations` class for validation functions.
Here's an example:

   ```flutter
       import 'package:custom_text_form_field_plus/custom_text_form_field_plus.dart';
   ```
   
   ```
       CustomTextFormField(
           labelText: 'Name',
           hintText: 'Enter Name',
           validator: (String? value) => Validations.emptyValidation(value),
       );
       
   ```
   
   Check example folder for more.
   </br></br>

### Customizations

   `CustomTextFormField` provides various customization options through its constructor parameters. You
   can customize attributes like `labelText`, `hintText`, `validator`, and many more to suit your
   application's requirements.
   
   For more details on customization options, refer to
   the [CustomTextFormField API documentation](https://pub.dev/packages/custom_text_form_field_plus).

### Author

   - [Dharti Chauhan](https://github.com/Dharti1623)
   
   If you have any questions or need assistance, please feel free to contact the author.