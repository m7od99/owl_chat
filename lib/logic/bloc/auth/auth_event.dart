part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.updateEmail({required String email}) = UpdateEmail;

  const factory AuthEvent.updatePassword({required String value}) = UpdatePassword;
  const factory AuthEvent.updateUserName({required String value}) = UpdateUserName;
  const factory AuthEvent.updateConfirmPassword({required String value}) = UpdateConfirmPassword;

  const factory AuthEvent.loginPress() = LoginPress;
  const factory AuthEvent.signUpPress() = SignUpPress;

  const factory AuthEvent.loginWithGooglePress() = LoginWithGooglePress;

  const factory AuthEvent.tapToSignUpPage() = TapToSignUpPage;

  const factory AuthEvent.onFirebaseError({required String error}) = OnFirebaseError;
}
