// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'about.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

About _$AboutFromJson(Map<String, dynamic> json) {
  return _About.fromJson(json);
}

/// @nodoc
class _$AboutTearOff {
  const _$AboutTearOff();

  _About call({required String version, required List<String> changeLog}) {
    return _About(
      version: version,
      changeLog: changeLog,
    );
  }

  About fromJson(Map<String, Object?> json) {
    return About.fromJson(json);
  }
}

/// @nodoc
const $About = _$AboutTearOff();

/// @nodoc
mixin _$About {
  String get version => throw _privateConstructorUsedError;
  List<String> get changeLog => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutCopyWith<About> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCopyWith<$Res> {
  factory $AboutCopyWith(About value, $Res Function(About) then) =
      _$AboutCopyWithImpl<$Res>;
  $Res call({String version, List<String> changeLog});
}

/// @nodoc
class _$AboutCopyWithImpl<$Res> implements $AboutCopyWith<$Res> {
  _$AboutCopyWithImpl(this._value, this._then);

  final About _value;
  // ignore: unused_field
  final $Res Function(About) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? changeLog = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      changeLog: changeLog == freezed
          ? _value.changeLog
          : changeLog // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AboutCopyWith<$Res> implements $AboutCopyWith<$Res> {
  factory _$AboutCopyWith(_About value, $Res Function(_About) then) =
      __$AboutCopyWithImpl<$Res>;
  @override
  $Res call({String version, List<String> changeLog});
}

/// @nodoc
class __$AboutCopyWithImpl<$Res> extends _$AboutCopyWithImpl<$Res>
    implements _$AboutCopyWith<$Res> {
  __$AboutCopyWithImpl(_About _value, $Res Function(_About) _then)
      : super(_value, (v) => _then(v as _About));

  @override
  _About get _value => super._value as _About;

  @override
  $Res call({
    Object? version = freezed,
    Object? changeLog = freezed,
  }) {
    return _then(_About(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      changeLog: changeLog == freezed
          ? _value.changeLog
          : changeLog // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_About implements _About {
  const _$_About({required this.version, required this.changeLog});

  factory _$_About.fromJson(Map<String, dynamic> json) =>
      _$$_AboutFromJson(json);

  @override
  final String version;
  @override
  final List<String> changeLog;

  @override
  String toString() {
    return 'About(version: $version, changeLog: $changeLog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _About &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.changeLog, changeLog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(changeLog));

  @JsonKey(ignore: true)
  @override
  _$AboutCopyWith<_About> get copyWith =>
      __$AboutCopyWithImpl<_About>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutToJson(this);
  }
}

abstract class _About implements About {
  const factory _About(
      {required String version, required List<String> changeLog}) = _$_About;

  factory _About.fromJson(Map<String, dynamic> json) = _$_About.fromJson;

  @override
  String get version;
  @override
  List<String> get changeLog;
  @override
  @JsonKey(ignore: true)
  _$AboutCopyWith<_About> get copyWith => throw _privateConstructorUsedError;
}
