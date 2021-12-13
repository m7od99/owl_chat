// ignore_for_file: prefer_const_constructors

part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required String email,
    required String password,
    required String confirmPassword,
    required String userName,
    required bool showError,
    required List<String> errors,
    required List<String> firebaseError,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        email: '',
        errors: [],
        password: '',
        showError: false,
        confirmPassword: '',
        userName: '',
        firebaseError: [],
      );
}
