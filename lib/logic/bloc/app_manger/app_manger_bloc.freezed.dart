// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_manger_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppMangerEventTearOff {
  const _$AppMangerEventTearOff();

  OnConnectivityChanged onConnectivityChanged() {
    return const OnConnectivityChanged();
  }
}

/// @nodoc
const $AppMangerEvent = _$AppMangerEventTearOff();

/// @nodoc
mixin _$AppMangerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnectivityChanged value)
        onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnectivityChanged value)? onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMangerEventCopyWith<$Res> {
  factory $AppMangerEventCopyWith(
          AppMangerEvent value, $Res Function(AppMangerEvent) then) =
      _$AppMangerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppMangerEventCopyWithImpl<$Res>
    implements $AppMangerEventCopyWith<$Res> {
  _$AppMangerEventCopyWithImpl(this._value, this._then);

  final AppMangerEvent _value;
  // ignore: unused_field
  final $Res Function(AppMangerEvent) _then;
}

/// @nodoc
abstract class $OnConnectivityChangedCopyWith<$Res> {
  factory $OnConnectivityChangedCopyWith(OnConnectivityChanged value,
          $Res Function(OnConnectivityChanged) then) =
      _$OnConnectivityChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnConnectivityChangedCopyWithImpl<$Res>
    extends _$AppMangerEventCopyWithImpl<$Res>
    implements $OnConnectivityChangedCopyWith<$Res> {
  _$OnConnectivityChangedCopyWithImpl(
      OnConnectivityChanged _value, $Res Function(OnConnectivityChanged) _then)
      : super(_value, (v) => _then(v as OnConnectivityChanged));

  @override
  OnConnectivityChanged get _value => super._value as OnConnectivityChanged;
}

/// @nodoc

class _$OnConnectivityChanged implements OnConnectivityChanged {
  const _$OnConnectivityChanged();

  @override
  String toString() {
    return 'AppMangerEvent.onConnectivityChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OnConnectivityChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onConnectivityChanged,
  }) {
    return onConnectivityChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onConnectivityChanged,
  }) {
    return onConnectivityChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (onConnectivityChanged != null) {
      return onConnectivityChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnConnectivityChanged value)
        onConnectivityChanged,
  }) {
    return onConnectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnConnectivityChanged value)? onConnectivityChanged,
  }) {
    return onConnectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (onConnectivityChanged != null) {
      return onConnectivityChanged(this);
    }
    return orElse();
  }
}

abstract class OnConnectivityChanged implements AppMangerEvent {
  const factory OnConnectivityChanged() = _$OnConnectivityChanged;
}
