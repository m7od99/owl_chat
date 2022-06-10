// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  UpdateEmail updateEmail({required String email}) {
    return UpdateEmail(
      email: email,
    );
  }

  UpdatePassword updatePassword({required String value}) {
    return UpdatePassword(
      value: value,
    );
  }

  UpdateUserName updateUserName({required String value}) {
    return UpdateUserName(
      value: value,
    );
  }

  UpdateConfirmPassword updateConfirmPassword({required String value}) {
    return UpdateConfirmPassword(
      value: value,
    );
  }

  LoginPress loginPress() {
    return const LoginPress();
  }

  SignUpPress signUpPress() {
    return const SignUpPress();
  }

  LoginWithGooglePress loginWithGooglePress() {
    return const LoginWithGooglePress();
  }

  TapToSignUpPage tapToSignUpPage() {
    return const TapToSignUpPage();
  }

  OnFirebaseError onFirebaseError({required String error}) {
    return OnFirebaseError(
      error: error,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $UpdateEmailCopyWith<$Res> {
  factory $UpdateEmailCopyWith(
          UpdateEmail value, $Res Function(UpdateEmail) then) =
      _$UpdateEmailCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$UpdateEmailCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UpdateEmailCopyWith<$Res> {
  _$UpdateEmailCopyWithImpl(
      UpdateEmail _value, $Res Function(UpdateEmail) _then)
      : super(_value, (v) => _then(v as UpdateEmail));

  @override
  UpdateEmail get _value => super._value as UpdateEmail;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(UpdateEmail(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEmail implements UpdateEmail {
  const _$UpdateEmail({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateEmail &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $UpdateEmailCopyWith<UpdateEmail> get copyWith =>
      _$UpdateEmailCopyWithImpl<UpdateEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class UpdateEmail implements AuthEvent {
  const factory UpdateEmail({required String email}) = _$UpdateEmail;

  String get email;
  @JsonKey(ignore: true)
  $UpdateEmailCopyWith<UpdateEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatePasswordCopyWith<$Res> {
  factory $UpdatePasswordCopyWith(
          UpdatePassword value, $Res Function(UpdatePassword) then) =
      _$UpdatePasswordCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$UpdatePasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UpdatePasswordCopyWith<$Res> {
  _$UpdatePasswordCopyWithImpl(
      UpdatePassword _value, $Res Function(UpdatePassword) _then)
      : super(_value, (v) => _then(v as UpdatePassword));

  @override
  UpdatePassword get _value => super._value as UpdatePassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(UpdatePassword(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePassword implements UpdatePassword {
  const _$UpdatePassword({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updatePassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdatePassword &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $UpdatePasswordCopyWith<UpdatePassword> get copyWith =>
      _$UpdatePasswordCopyWithImpl<UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return updatePassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return updatePassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UpdatePassword implements AuthEvent {
  const factory UpdatePassword({required String value}) = _$UpdatePassword;

  String get value;
  @JsonKey(ignore: true)
  $UpdatePasswordCopyWith<UpdatePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserNameCopyWith<$Res> {
  factory $UpdateUserNameCopyWith(
          UpdateUserName value, $Res Function(UpdateUserName) then) =
      _$UpdateUserNameCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$UpdateUserNameCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UpdateUserNameCopyWith<$Res> {
  _$UpdateUserNameCopyWithImpl(
      UpdateUserName _value, $Res Function(UpdateUserName) _then)
      : super(_value, (v) => _then(v as UpdateUserName));

  @override
  UpdateUserName get _value => super._value as UpdateUserName;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(UpdateUserName(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserName implements UpdateUserName {
  const _$UpdateUserName({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updateUserName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateUserName &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $UpdateUserNameCopyWith<UpdateUserName> get copyWith =>
      _$UpdateUserNameCopyWithImpl<UpdateUserName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return updateUserName(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return updateUserName?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updateUserName != null) {
      return updateUserName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return updateUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return updateUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updateUserName != null) {
      return updateUserName(this);
    }
    return orElse();
  }
}

abstract class UpdateUserName implements AuthEvent {
  const factory UpdateUserName({required String value}) = _$UpdateUserName;

  String get value;
  @JsonKey(ignore: true)
  $UpdateUserNameCopyWith<UpdateUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateConfirmPasswordCopyWith<$Res> {
  factory $UpdateConfirmPasswordCopyWith(UpdateConfirmPassword value,
          $Res Function(UpdateConfirmPassword) then) =
      _$UpdateConfirmPasswordCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$UpdateConfirmPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $UpdateConfirmPasswordCopyWith<$Res> {
  _$UpdateConfirmPasswordCopyWithImpl(
      UpdateConfirmPassword _value, $Res Function(UpdateConfirmPassword) _then)
      : super(_value, (v) => _then(v as UpdateConfirmPassword));

  @override
  UpdateConfirmPassword get _value => super._value as UpdateConfirmPassword;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(UpdateConfirmPassword(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateConfirmPassword implements UpdateConfirmPassword {
  const _$UpdateConfirmPassword({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'AuthEvent.updateConfirmPassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateConfirmPassword &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $UpdateConfirmPasswordCopyWith<UpdateConfirmPassword> get copyWith =>
      _$UpdateConfirmPasswordCopyWithImpl<UpdateConfirmPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return updateConfirmPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return updateConfirmPassword?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return updateConfirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return updateConfirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (updateConfirmPassword != null) {
      return updateConfirmPassword(this);
    }
    return orElse();
  }
}

abstract class UpdateConfirmPassword implements AuthEvent {
  const factory UpdateConfirmPassword({required String value}) =
      _$UpdateConfirmPassword;

  String get value;
  @JsonKey(ignore: true)
  $UpdateConfirmPasswordCopyWith<UpdateConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPressCopyWith<$Res> {
  factory $LoginPressCopyWith(
          LoginPress value, $Res Function(LoginPress) then) =
      _$LoginPressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPressCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginPressCopyWith<$Res> {
  _$LoginPressCopyWithImpl(LoginPress _value, $Res Function(LoginPress) _then)
      : super(_value, (v) => _then(v as LoginPress));

  @override
  LoginPress get _value => super._value as LoginPress;
}

/// @nodoc

class _$LoginPress implements LoginPress {
  const _$LoginPress();

  @override
  String toString() {
    return 'AuthEvent.loginPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return loginPress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return loginPress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (loginPress != null) {
      return loginPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return loginPress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return loginPress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (loginPress != null) {
      return loginPress(this);
    }
    return orElse();
  }
}

abstract class LoginPress implements AuthEvent {
  const factory LoginPress() = _$LoginPress;
}

/// @nodoc
abstract class $SignUpPressCopyWith<$Res> {
  factory $SignUpPressCopyWith(
          SignUpPress value, $Res Function(SignUpPress) then) =
      _$SignUpPressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpPressCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignUpPressCopyWith<$Res> {
  _$SignUpPressCopyWithImpl(
      SignUpPress _value, $Res Function(SignUpPress) _then)
      : super(_value, (v) => _then(v as SignUpPress));

  @override
  SignUpPress get _value => super._value as SignUpPress;
}

/// @nodoc

class _$SignUpPress implements SignUpPress {
  const _$SignUpPress();

  @override
  String toString() {
    return 'AuthEvent.signUpPress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignUpPress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return signUpPress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return signUpPress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (signUpPress != null) {
      return signUpPress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return signUpPress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return signUpPress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (signUpPress != null) {
      return signUpPress(this);
    }
    return orElse();
  }
}

abstract class SignUpPress implements AuthEvent {
  const factory SignUpPress() = _$SignUpPress;
}

/// @nodoc
abstract class $LoginWithGooglePressCopyWith<$Res> {
  factory $LoginWithGooglePressCopyWith(LoginWithGooglePress value,
          $Res Function(LoginWithGooglePress) then) =
      _$LoginWithGooglePressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginWithGooglePressCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginWithGooglePressCopyWith<$Res> {
  _$LoginWithGooglePressCopyWithImpl(
      LoginWithGooglePress _value, $Res Function(LoginWithGooglePress) _then)
      : super(_value, (v) => _then(v as LoginWithGooglePress));

  @override
  LoginWithGooglePress get _value => super._value as LoginWithGooglePress;
}

/// @nodoc

class _$LoginWithGooglePress implements LoginWithGooglePress {
  const _$LoginWithGooglePress();

  @override
  String toString() {
    return 'AuthEvent.loginWithGooglePress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginWithGooglePress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return loginWithGooglePress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return loginWithGooglePress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (loginWithGooglePress != null) {
      return loginWithGooglePress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return loginWithGooglePress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return loginWithGooglePress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (loginWithGooglePress != null) {
      return loginWithGooglePress(this);
    }
    return orElse();
  }
}

abstract class LoginWithGooglePress implements AuthEvent {
  const factory LoginWithGooglePress() = _$LoginWithGooglePress;
}

/// @nodoc
abstract class $TapToSignUpPageCopyWith<$Res> {
  factory $TapToSignUpPageCopyWith(
          TapToSignUpPage value, $Res Function(TapToSignUpPage) then) =
      _$TapToSignUpPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$TapToSignUpPageCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $TapToSignUpPageCopyWith<$Res> {
  _$TapToSignUpPageCopyWithImpl(
      TapToSignUpPage _value, $Res Function(TapToSignUpPage) _then)
      : super(_value, (v) => _then(v as TapToSignUpPage));

  @override
  TapToSignUpPage get _value => super._value as TapToSignUpPage;
}

/// @nodoc

class _$TapToSignUpPage implements TapToSignUpPage {
  const _$TapToSignUpPage();

  @override
  String toString() {
    return 'AuthEvent.tapToSignUpPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TapToSignUpPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return tapToSignUpPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return tapToSignUpPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (tapToSignUpPage != null) {
      return tapToSignUpPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return tapToSignUpPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return tapToSignUpPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (tapToSignUpPage != null) {
      return tapToSignUpPage(this);
    }
    return orElse();
  }
}

abstract class TapToSignUpPage implements AuthEvent {
  const factory TapToSignUpPage() = _$TapToSignUpPage;
}

/// @nodoc
abstract class $OnFirebaseErrorCopyWith<$Res> {
  factory $OnFirebaseErrorCopyWith(
          OnFirebaseError value, $Res Function(OnFirebaseError) then) =
      _$OnFirebaseErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$OnFirebaseErrorCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $OnFirebaseErrorCopyWith<$Res> {
  _$OnFirebaseErrorCopyWithImpl(
      OnFirebaseError _value, $Res Function(OnFirebaseError) _then)
      : super(_value, (v) => _then(v as OnFirebaseError));

  @override
  OnFirebaseError get _value => super._value as OnFirebaseError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(OnFirebaseError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFirebaseError implements OnFirebaseError {
  const _$OnFirebaseError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthEvent.onFirebaseError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnFirebaseError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $OnFirebaseErrorCopyWith<OnFirebaseError> get copyWith =>
      _$OnFirebaseErrorCopyWithImpl<OnFirebaseError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String value) updatePassword,
    required TResult Function(String value) updateUserName,
    required TResult Function(String value) updateConfirmPassword,
    required TResult Function() loginPress,
    required TResult Function() signUpPress,
    required TResult Function() loginWithGooglePress,
    required TResult Function() tapToSignUpPage,
    required TResult Function(String error) onFirebaseError,
  }) {
    return onFirebaseError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
  }) {
    return onFirebaseError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String value)? updatePassword,
    TResult Function(String value)? updateUserName,
    TResult Function(String value)? updateConfirmPassword,
    TResult Function()? loginPress,
    TResult Function()? signUpPress,
    TResult Function()? loginWithGooglePress,
    TResult Function()? tapToSignUpPage,
    TResult Function(String error)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (onFirebaseError != null) {
      return onFirebaseError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateEmail value) updateEmail,
    required TResult Function(UpdatePassword value) updatePassword,
    required TResult Function(UpdateUserName value) updateUserName,
    required TResult Function(UpdateConfirmPassword value)
        updateConfirmPassword,
    required TResult Function(LoginPress value) loginPress,
    required TResult Function(SignUpPress value) signUpPress,
    required TResult Function(LoginWithGooglePress value) loginWithGooglePress,
    required TResult Function(TapToSignUpPage value) tapToSignUpPage,
    required TResult Function(OnFirebaseError value) onFirebaseError,
  }) {
    return onFirebaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
  }) {
    return onFirebaseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateEmail value)? updateEmail,
    TResult Function(UpdatePassword value)? updatePassword,
    TResult Function(UpdateUserName value)? updateUserName,
    TResult Function(UpdateConfirmPassword value)? updateConfirmPassword,
    TResult Function(LoginPress value)? loginPress,
    TResult Function(SignUpPress value)? signUpPress,
    TResult Function(LoginWithGooglePress value)? loginWithGooglePress,
    TResult Function(TapToSignUpPage value)? tapToSignUpPage,
    TResult Function(OnFirebaseError value)? onFirebaseError,
    required TResult orElse(),
  }) {
    if (onFirebaseError != null) {
      return onFirebaseError(this);
    }
    return orElse();
  }
}

abstract class OnFirebaseError implements AuthEvent {
  const factory OnFirebaseError({required String error}) = _$OnFirebaseError;

  String get error;
  @JsonKey(ignore: true)
  $OnFirebaseErrorCopyWith<OnFirebaseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required String email,
      required String password,
      required String confirmPassword,
      required String userName,
      required bool showError,
      required List<String> errors,
      required List<String> firebaseError}) {
    return _AuthState(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      userName: userName,
      showError: showError,
      errors: errors,
      firebaseError: firebaseError,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  List<String> get errors => throw _privateConstructorUsedError;
  List<String> get firebaseError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String userName,
      bool showError,
      List<String> errors,
      List<String> firebaseError});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? userName = freezed,
    Object? showError = freezed,
    Object? errors = freezed,
    Object? firebaseError = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firebaseError: firebaseError == freezed
          ? _value.firebaseError
          : firebaseError // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String confirmPassword,
      String userName,
      bool showError,
      List<String> errors,
      List<String> firebaseError});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? userName = freezed,
    Object? showError = freezed,
    Object? errors = freezed,
    Object? firebaseError = freezed,
  }) {
    return _then(_AuthState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
      firebaseError: firebaseError == freezed
          ? _value.firebaseError
          : firebaseError // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.userName,
      required this.showError,
      required this.errors,
      required this.firebaseError});

  @override
  final String email;
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String userName;
  @override
  final bool showError;
  @override
  final List<String> errors;
  @override
  final List<String> firebaseError;

  @override
  String toString() {
    return 'AuthState(email: $email, password: $password, confirmPassword: $confirmPassword, userName: $userName, showError: $showError, errors: $errors, firebaseError: $firebaseError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality()
                .equals(other.firebaseError, firebaseError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(firebaseError));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required String email,
      required String password,
      required String confirmPassword,
      required String userName,
      required bool showError,
      required List<String> errors,
      required List<String> firebaseError}) = _$_AuthState;

  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get userName;
  @override
  bool get showError;
  @override
  List<String> get errors;
  @override
  List<String> get firebaseError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
