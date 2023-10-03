import 'package:flutter/material.dart';

/// A custom text form field widget.
/// This widget provides a customizable text input field with various parameters
/// like labelText, hintText, validator, and more.
class CustomTextFormField extends StatelessWidget {
  final double? width;
  final int? maxLines, minLines, errorMaxLines;
  final String? labelText, hintText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final IconButton? suffixIconButton;
  final bool? autofocus, autocorrect;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autoValidateMode;
  final EdgeInsets? padding;
  final InputBorder? enabledBorder,
      border,
      focusedErrorBorder,
      focusedBorder,
      errorBorder,
      disabledBorder;

  /// Creates a [CustomTextFormField] widget.
  ///
  /// [labelText] - The label text to display above the text input field.
  /// [hintText] - The hint text to display inside the text input field.
  /// [width] - The width of the text input field.
  /// [validator] - A function that validates the input text.
  /// [controller] - A controller for manipulating the text input field.
  /// [textInputAction] - The action to be performed when the keyboard's "Done" button is pressed.
  /// [minLines] - The minimum number of lines to display in the input field.
  /// [autocorrect] - Whether autocorrection should be enabled for the input field.
  /// [autofocus] - Whether the input field should be focused automatically.
  /// [errorMaxLines] - The maximum number of lines to display when an error occurs.
  /// [maxLines] - The maximum number of lines to display in the input field.
  /// [suffixIconButton] - An icon button to be displayed as a suffix to the input field.
  /// [keyboardType] - The type of keyboard to display.
  /// [autoValidateMode] - When and how to validate the input automatically.
  /// [padding] - The padding around the input field.
  /// [enabledBorder] - The border to display when the input field is enabled.
  /// [border] - The border to display around the input field.
  /// [focusedErrorBorder] - The border to display when the input field is focused and in error state.
  /// [focusedBorder] - The border to display when the input field is focused.
  /// [errorBorder] - The border to display when the input field is in error state.
  /// [disabledBorder] - The border to display when the input field is disabled.
  const CustomTextFormField({
    Key? key,
    this.labelText,
    this.hintText,
    this.width,
    this.validator,
    this.controller,
    this.textInputAction = TextInputAction.done,
    this.minLines = 1,
    this.autocorrect = false,
    this.autofocus = false,
    this.errorMaxLines = 1,
    this.maxLines = 1,
    this.suffixIconButton,
    this.keyboardType,
    this.autoValidateMode,
    this.padding,
    this.enabledBorder,
    this.focusedErrorBorder,
    this.focusedBorder,
    this.errorBorder,
    this.disabledBorder,
    this.border,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen size.
    final size = MediaQuery.of(context).size;

    return Padding(
      // Apply the specified padding or use a default value.
      padding: padding ?? const EdgeInsets.all(8.0),
      child: FittedBox(
        child: SizedBox(
          // Set the width of the text input field or use the screen width by default.
          width: width ?? size.width,
          child: TextFormField(
            // Set the validation function for the input text.
            validator: validator,
            // Set the controller for the text input field.
            controller: controller,
            // Set the minimum number of lines.
            minLines: minLines,
            // Set the maximum number of lines.
            maxLines: maxLines,
            // Set whether autofocus is enabled.
            autofocus: autofocus!,
            // Set whether autocorrect is enabled.
            autocorrect: autocorrect!,
            // Set when and how to validate the input automatically.
            autovalidateMode: autoValidateMode,
            // Set the keyboard type.
            keyboardType: keyboardType,
            // Set the action to perform when the keyboard's "Done" button is pressed.
            textInputAction: textInputAction,
            decoration: InputDecoration(
              // Set the border when the input field is enabled.
              enabledBorder: enabledBorder ?? const OutlineInputBorder(),
              // Set the border when the input field is disabled.
              disabledBorder: disabledBorder ?? const OutlineInputBorder(),
              // Set the border when the input field is in error state.
              errorBorder: errorBorder ?? const OutlineInputBorder(),
              // Set the border when the input field is focused.
              focusedBorder: focusedBorder ?? const OutlineInputBorder(),
              // Set the border when the input field is focused and in error state.
              focusedErrorBorder:
                  focusedErrorBorder ?? const OutlineInputBorder(),
              // Set the default border.
              border: border ?? const OutlineInputBorder(),
              // Set the label text above the input field.
              labelText: labelText,
              // Set the hint text inside the input field.
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
