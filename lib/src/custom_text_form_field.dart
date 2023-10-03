import 'package:flutter/material.dart';

/// A custom text form field widget.
///
/// This widget provides a customizable text input field with various parameters
/// like labelText, hintText, validator, and more.
class CustomTextFormField extends StatelessWidget {
  final String? labelText, hintText;
  final double? width;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final int? minLines;
  final IconButton? suffixIconButton;
  final bool? autofocus;
  final bool? autocorrect;
  final TextInputAction? textInputAction;
  final int? errorMaxLines;
  final AutovalidateMode? autoValidateMode;
  final EdgeInsets? padding;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final InputBorder? focusedErrorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? disabledBorder;

  /// Creates a [CustomTextFormField] widget.
  ///
  /// The [labelText], [hintText], [width], [validator], [controller], and
  /// other parameters allow customization of the text form field's appearance
  /// and behavior.
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
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: FittedBox(
        child: SizedBox(
          width: width ?? size.width,
          child: TextFormField(
            validator: validator,
            controller: controller,
            minLines: minLines,
            maxLines: maxLines,
            autofocus: autofocus!,
            autocorrect: autocorrect!,
            autovalidateMode: autoValidateMode,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              enabledBorder: enabledBorder ?? const OutlineInputBorder(),
              disabledBorder: disabledBorder ?? const OutlineInputBorder(),
              errorBorder: errorBorder ?? const OutlineInputBorder(),
              focusedBorder: focusedBorder ?? const OutlineInputBorder(),
              focusedErrorBorder:
              focusedErrorBorder ?? const OutlineInputBorder(),
              border: border ?? const OutlineInputBorder(),
              labelText: labelText,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}

