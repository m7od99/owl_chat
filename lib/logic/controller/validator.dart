import 'package:flutter/cupertino.dart';
import 'package:owl_chat/presentation/theme/error_list.dart';

class Validator extends ChangeNotifier {
  List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      errors.add(error!);
      notifyListeners();
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      errors.remove(error);
      notifyListeners();
    }
  }

  void emailValidator(String value) {
    if (value.isNotEmpty) {
      removeError(error: kEmailNullError);
    } else if (emailValidatorRegExp.hasMatch(value)) {
      removeError(error: kInvalidEmailError);
    }
  }

  void emailNotValidator(String value) {
    if (value.isEmpty) {
      addError(error: kEmailNullError);
    } else if (!emailValidatorRegExp.hasMatch(value)) {
      addError(error: kInvalidEmailError);
    }
  }

  void passwordValidator(String value) {
    if (value.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (value.length >= 6) {
      removeError(error: kShortPassError);
    }
  }

  void passwordNotValid(String value) {
    if (value.isEmpty) {
      addError(error: kPassNullError);
    } else if (value.length < 6) {
      addError(error: kShortPassError);
    }
  }

  void passwordConfirmValid(String password, String conformPassword) {
    if (conformPassword.isNotEmpty) {
      removeError(error: kPassNullError);
    } else if (conformPassword.isNotEmpty && password == conformPassword) {
      removeError(error: kMatchPassError);
    }
  }

  void passwordConfirmNotValid(String conformPassword, String password) {
    if (conformPassword.isEmpty) {
      addError(error: kPassNullError);
    } else if (password != conformPassword) {
      addError(error: kMatchPassError);
    }
  }

  void userNameValid(String value) {
    if (value.isNotEmpty) {
      removeError(error: "Enter your user name");
    } else if (value.length >= 3) {
      removeError(error: "Your user name is too short");
    }
  }

  void userNameNotValid(String value) {
    if (value.isEmpty) {
      addError(error: "Enter your user name");
    } else if (value.length < 3) {
      addError(error: "Your user name is too short");
    }
  }

  void clearErrors() {
    errors.clear();
    notifyListeners();
  }
}
