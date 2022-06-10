// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:owl_chat/logic/event_handler/user_state.dart';
import 'package:owl_chat/navigation/router.dart';
import 'package:owl_chat/presentation/theme/error_list.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        ///
        updateEmail: (UpdateEmail value) {
          emit(state.copyWith(email: value.email));
          _emailValidator();
          emit(state.copyWith(errors: state.errors));
        },

        ///
        updatePassword: (UpdatePassword value) {
          emit(state.copyWith(password: value.value));
          _passwordValidator();
          emit(state.copyWith(errors: state.errors));
        },

        ///
        updateUserName: (UpdateUserName value) {
          emit(state.copyWith(userName: value.value));
          _userNameValidator();
          emit(state.copyWith(errors: state.errors));
        },

        ///
        updateConfirmPassword: (UpdateConfirmPassword value) {
          emit(state.copyWith(confirmPassword: value.value));
          _confirmPasswordValidator();
          emit(state.copyWith(errors: state.errors));
        },

        ///
        loginPress: (LoginPress value) async {
          _emailValidator();
          _passwordValidator();
          emit(state.copyWith(errors: state.errors));
          emit(state.copyWith(firebaseError: []));
          try {
            if (state.errors.isEmpty) {
              load.start();
              await _control.login(state.email, state.password);

              if (_control.isLogin) {
                add(const TapToSignUpPage());

                router.go('/');
              }
            }

            load.reset();
          } on FirebaseAuthException catch (e) {
            add(OnFirebaseError(error: e.toString()));
          }
          load.reset();
        },

        ///
        loginWithGooglePress: (LoginWithGooglePress value) {},

        ///
        signUpPress: (SignUpPress value) async {
          _emailValidator();
          _passwordValidator();
          _userNameValidator();
          _confirmPasswordValidator();
          emit(state.copyWith(errors: state.errors));

          try {
            loadSign.start();

            if (state.errors.isEmpty) {
              await _control.signUp(state.email, state.password, state.userName);

              if (_control.isLogin) {
                add(const TapToSignUpPage());
                router.go('/');
              }
            }
            loadSign.reset();
          } on FirebaseAuthException catch (e) {
            loadSign.reset();

            add(OnFirebaseError(error: e.toString()));
          }
          loadSign.reset();
        },

        ///
        tapToSignUpPage: (TapToSignUpPage value) {
          emit(
            state.copyWith(
              password: '',
              email: '',
              confirmPassword: '',
              errors: [],
              userName: '',
              firebaseError: [],
            ),
          );
        },

        ///
        onFirebaseError: (OnFirebaseError value) {
          state.firebaseError.add(value.error);
          emit(state);
        },
      );
    });
  }

  final UserState _control = UserState();
  final load = RoundedLoadingButtonController();
  final loadSign = RoundedLoadingButtonController();

  void _addErrorE(String error) {
    if (!state.errors.contains(error)) {
      state.errors.add(error);
    }
  }

  void _removeError(String error) {
    if (state.errors.contains(error)) {
      state.errors.remove(error);
    }
  }

  void _emailValidator() {
    if (!emailValidatorRegExp.hasMatch(state.email)) {
      _addErrorE(kInvalidEmailError);
    }
    if (emailValidatorRegExp.hasMatch(state.email)) {
      _removeError(kInvalidEmailError);
    }
    if (state.email.isEmpty) {
      addError(kEmailNullError);
    }
    if (state.email.isNotEmpty) {
      _removeError(kEmailNullError);
    }
  }

  void _passwordValidator() {
    if (state.password.length >= 6) {
      _removeError(kShortPassError);
    }
    if (state.password.length < 6) {
      _addErrorE(kShortPassError);
    }
    if (state.password.isEmpty) {
      _addErrorE(kPassNullError);
    }
    if (state.password.isNotEmpty) {
      _removeError(kPassNullError);
    }
  }

  void _userNameValidator() {
    if (state.userName.length >= 3) {
      _removeError(kShortNameError);
    }
    if (state.userName.length < 3) {
      _addErrorE(kShortNameError);
    }
    if (state.userName.isEmpty) {
      _addErrorE(kNameNullError);
    }
    if (state.userName.isNotEmpty) {
      _removeError(kNameNullError);
    }
    //todo:implement same user Name not allow ...
  }

  void _confirmPasswordValidator() {
    if (state.confirmPassword != state.password) {
      _addErrorE(kMatchPassError);
    }
    if (state.confirmPassword == state.password) {
      _removeError(kMatchPassError);
    }
  }
}
