import 'package:flutter/cupertino.dart';
import 'package:owl_chat/presentation/theme/error_list.dart';

class Validator extends ChangeNotifier {
  List<String> errors = [];

  addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error!);
      notifyListeners();
    }
  }

  removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
      notifyListeners();
    }
  }

  void emailValidator(value) {
    if (value.isNotEmpty) {
      removeError(error: kEmailNullError);
    } else if (emailValidatorRegExp.hasMatch(value)) {
      removeError(error: kInvalidEmailError);
    }
    return null;
  }

  void emailNotValidator(value) {
    if (value.isEmpty) {
      addError(error: kEmailNullError);
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      addError(error: kInvalidEmailError);
    }
    return null;
  }

  void passwordValidator(value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.length >= 6) {
      removeError(error: kShortPassError);
    }
    return null;
  }

  void passwordNotValid(value) {
    if (value.isEmpty) {
      addError(error: kPassNullError);
    } else if (value.length < 6) {
      addError(error: kShortPassError);
    }
    return null;
  }
}
