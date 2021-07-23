import 'package:owl_chat/presentation/theme/error_list.dart';

class SignUpValidator {
  final List<String> errors = [];

  void addError({required String error}) {}

  void removeError({required String error}) {}

  void emailValidator(value) {
    if (value.isNotEmpty) {
      removeError(error: kEmailNullError);
    } else if (emailValidatorRegExp.hasMatch(value)) {
      removeError(error: kInvalidEmailError);
    }
    return null;
  }

  void emailNotValidator(value) {
    if (value!.isEmpty) {
      addError(error: kEmailNullError);
      return;
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      addError(error: kInvalidEmailError);
      return;
    }
    return null;
  }
}
