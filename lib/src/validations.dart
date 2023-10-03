
/// A class containing various validation functions.
class Validations {
  /// Validates if the value is empty or whitespace.
  ///
  /// Returns an error message if the value is empty or whitespace; otherwise,
  /// returns null.
  static String? emptyValidation(String? value) {
    if (value == null || value.isEmpty || value.trim() == "") {
      return "This field cannot be empty.";
    }
    return null;
  }

  /// Validates if the value is a valid email address.
  ///
  /// Returns an error message if the value is not a valid email; otherwise,
  /// returns null.
  static String? emailValidation(String? value) {
    final regex = RegExp(
        r'^[_A-Za-z0-9-+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})\$*(\s?)');
    final emailNonNullValue = value ?? "";
    if (emailNonNullValue.isEmpty || emailNonNullValue.trim() == "") {
      return "This field cannot be empty.";
    } else if (!regex.hasMatch(emailNonNullValue)) {
      return "Invalid email.";
    }
    return null;
  }

  /// Validates if the value is a valid contact number.
  ///
  /// Returns an error message if the value is not a valid contact number;
  /// otherwise, returns null.
  static String? contactNumberValidation(String? value) {
    final regex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
    final contactVal = value ?? "";
    if (contactVal.isEmpty || contactVal.trim() == "") {
      return "This field cannot be empty.";
    } else if (contactVal.length < 8) {
      return "Invalid contact.";
    } else if (!regex.hasMatch(value!)) {
      return "Invalid contact.";
    }
    return null;
  }
}