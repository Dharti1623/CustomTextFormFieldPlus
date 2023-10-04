# Custom Text Form Field Plus - A Customizable Text Input Widget with Validation for Flutter

`custom_text_form_field_plus` is a customizable text input field widget for your Flutter project. It
provides a feature-rich text input field with support for labels, hints, validation, and more. This
widget simplifies the process of creating and customizing text input fields in your Flutter
applications.
</br></br>

## Platform Support

| Android | iOS     | Web     | MacOS   | Linux   | Windows |
| :-----: | :-:     | :---:   | :-----: | :-:     | :---:   |
| &#9989; | &#9989; | &#9989; | &#9989; | &#9989; | &#9989; |



| **Android**  | **iOS** | **Web** | **MacOS** | **Linux** | **Windows**  |
|:------------:|:-------:|:-------:|:---------:|:---------:|:------------:|
|   &#9989;    | &#9989; | &#9989; |  &#9989;  |  &#9989;  |   &#9989;    |

</br></br></br>

### Installation

To use `custom_text_form_field_plus` in your Flutter project, follow these steps:

1. Add the package to your `pubspec.yaml` file and run `flutter pub get`:

    ```yaml
        dependencies:
          custom_text_form_field_plus: ^0.0.5  
    ```

2. Import the package in your Dart code:

   ```dart
   import 'package:custom_text_form_field_plus/custom_text_form_field_plus.dart';
   ```

</br></br></br>

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
      ),
      CustomTextFormField(
         labelText: 'Email',
         hintText: 'Enter Email',
         validator: (String? value) => Validations.emailValidation(value),
      ),
      CustomTextFormField(
         labelText: 'Phone Number',
         hintText: 'Enter Mobile Number',
         validator: (String? value) => Validations.contactNumberValidation(value),
      ),
   ```

Check example folder for more.
</br></br></br>

### Customizations

`CustomTextFormField` provides various customization options through its constructor parameters. You
can customize attributes like `labelText`, `hintText`, `validator`, and many more to suit your
application's requirements.
</br>

| <center>**`Attribute`**</center> | <center>**`Type`**</center> | <center>**`Description`**</center>                                        |
|:---------------------------------|:---------------------------:|:--------------------------------------------------------------------------|
| labelText                        |           String            | The label text to display above the text input field.                     |
| hintText                         |           String            | The hint text to display inside the text input field.                     |
| width                            |           Double            | The width of the text input field.                                        |
| validator                        | FormFieldValidator<String>  | A function that validates the input text.                                 |
| controller                       |    TextEditingController    | A controller for manipulating the text input field.                       |
| textInputAction                  |       TextInputAction       | The action to be performed when the keyboard's "Done" button is pressed.  |
| minLines                         |             int             | The minimum number of lines to display in the input field.                |
| autocorrect                      |            bool             | Whether autocorrection should be enabled for the input field.             |
| autofocus                        |            bool             | Whether the input field should be focused automatically.                  |
| errorMaxLines                    |             int             | The maximum number of lines to display when an error occurs.              |
| maxLines                         |             int             | The maximum number of lines to display in the input field.                |
| suffixIconButton                 |         IconButton          | An icon button to be displayed as a suffix to the input field.            |
| keyboardType                     |        TextInputType        | The type of keyboard to display.                                          |
| autoValidateMode                 |      AutovalidateMode       | When and how to validate the input automatically.                         |
| padding                          |         EdgeInsets          | The padding around the input field.                                       |
| enabledBorder                    |         InputBorder         | The border to display when the input field is enabled.                    |
| border                           |         InputBorder         | The border to display around the input field.                             |
| focusedErrorBorder               |         InputBorder         | The border to display when the input field is focused and in error state. |
| focusedBorder                    |         InputBorder         | The border to display when the input field is focused.                    |
| errorBorder                      |         InputBorder         | The border to display when the input field is in error state.             |
| disabledBorder                   |         InputBorder         | The border to display when the input field is disabled.                   |

For more details on customization options, refer to
the [CustomTextFormField API documentation](https://pub.dev/packages/custom_text_form_field_plus).
</br></br>

### Author

- [Dharti Chauhan](https://www.linkedin.com/in/dhartichauhan)

If you have any questions or need assistance, please feel free to contact the author.