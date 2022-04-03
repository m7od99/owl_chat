// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationsModel _$NotificationsModelFromJson(Map<String, dynamic> json) {
  return _NotificationsModel.fromJson(json);
}

/// @nodoc
class _$NotificationsModelTearOff {
  const _$NotificationsModelTearOff();

  _NotificationsModel call(
      {String? priority,
      required Data data,
      required String to,
      @JsonKey(name: 'mutable_content') bool? mutableContent,
      @JsonKey(name: 'content_available') bool? contentAvailable}) {
    return _NotificationsModel(
      priority: priority,
      data: data,
      to: to,
      mutableContent: mutableContent,
      contentAvailable: contentAvailable,
    );
  }

  NotificationsModel fromJson(Map<String, Object?> json) {
    return NotificationsModel.fromJson(json);
  }
}

/// @nodoc
const $NotificationsModel = _$NotificationsModelTearOff();

/// @nodoc
mixin _$NotificationsModel {
  String? get priority => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  /// token
  String get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'mutable_content')
  bool? get mutableContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_available')
  bool? get contentAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationsModelCopyWith<NotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsModelCopyWith<$Res> {
  factory $NotificationsModelCopyWith(
          NotificationsModel value, $Res Function(NotificationsModel) then) =
      _$NotificationsModelCopyWithImpl<$Res>;
  $Res call(
      {String? priority,
      Data data,
      String to,
      @JsonKey(name: 'mutable_content') bool? mutableContent,
      @JsonKey(name: 'content_available') bool? contentAvailable});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$NotificationsModelCopyWithImpl<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  _$NotificationsModelCopyWithImpl(this._value, this._then);

  final NotificationsModel _value;
  // ignore: unused_field
  final $Res Function(NotificationsModel) _then;

  @override
  $Res call({
    Object? priority = freezed,
    Object? data = freezed,
    Object? to = freezed,
    Object? mutableContent = freezed,
    Object? contentAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      mutableContent: mutableContent == freezed
          ? _value.mutableContent
          : mutableContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentAvailable: contentAvailable == freezed
          ? _value.contentAvailable
          : contentAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationsModelCopyWith<$Res>
    implements $NotificationsModelCopyWith<$Res> {
  factory _$NotificationsModelCopyWith(
          _NotificationsModel value, $Res Function(_NotificationsModel) then) =
      __$NotificationsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? priority,
      Data data,
      String to,
      @JsonKey(name: 'mutable_content') bool? mutableContent,
      @JsonKey(name: 'content_available') bool? contentAvailable});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$NotificationsModelCopyWithImpl<$Res>
    extends _$NotificationsModelCopyWithImpl<$Res>
    implements _$NotificationsModelCopyWith<$Res> {
  __$NotificationsModelCopyWithImpl(
      _NotificationsModel _value, $Res Function(_NotificationsModel) _then)
      : super(_value, (v) => _then(v as _NotificationsModel));

  @override
  _NotificationsModel get _value => super._value as _NotificationsModel;

  @override
  $Res call({
    Object? priority = freezed,
    Object? data = freezed,
    Object? to = freezed,
    Object? mutableContent = freezed,
    Object? contentAvailable = freezed,
  }) {
    return _then(_NotificationsModel(
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      mutableContent: mutableContent == freezed
          ? _value.mutableContent
          : mutableContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentAvailable: contentAvailable == freezed
          ? _value.contentAvailable
          : contentAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationsModel implements _NotificationsModel {
  _$_NotificationsModel(
      {this.priority,
      required this.data,
      required this.to,
      @JsonKey(name: 'mutable_content') this.mutableContent,
      @JsonKey(name: 'content_available') this.contentAvailable});

  factory _$_NotificationsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationsModelFromJson(json);

  @override
  final String? priority;
  @override
  final Data data;
  @override

  /// token
  final String to;
  @override
  @JsonKey(name: 'mutable_content')
  final bool? mutableContent;
  @override
  @JsonKey(name: 'content_available')
  final bool? contentAvailable;

  @override
  String toString() {
    return 'NotificationsModel(priority: $priority, data: $data, to: $to, mutableContent: $mutableContent, contentAvailable: $contentAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationsModel &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality()
                .equals(other.mutableContent, mutableContent) &&
            const DeepCollectionEquality()
                .equals(other.contentAvailable, contentAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(mutableContent),
      const DeepCollectionEquality().hash(contentAvailable));

  @JsonKey(ignore: true)
  @override
  _$NotificationsModelCopyWith<_NotificationsModel> get copyWith =>
      __$NotificationsModelCopyWithImpl<_NotificationsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationsModelToJson(this);
  }
}

abstract class _NotificationsModel implements NotificationsModel {
  factory _NotificationsModel(
          {String? priority,
          required Data data,
          required String to,
          @JsonKey(name: 'mutable_content') bool? mutableContent,
          @JsonKey(name: 'content_available') bool? contentAvailable}) =
      _$_NotificationsModel;

  factory _NotificationsModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationsModel.fromJson;

  @override
  String? get priority;
  @override
  Data get data;
  @override

  /// token
  String get to;
  @override
  @JsonKey(name: 'mutable_content')
  bool? get mutableContent;
  @override
  @JsonKey(name: 'content_available')
  bool? get contentAvailable;
  @override
  @JsonKey(ignore: true)
  _$NotificationsModelCopyWith<_NotificationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
