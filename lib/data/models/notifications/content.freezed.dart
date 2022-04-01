// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
class _$ContentTearOff {
  const _$ContentTearOff();

  _Content call(
      {String? id,
      String? title,
      Payload? payload,
      String? body,
      String? largeIcon,
      String? summary,
      String? channelKey,
      String? category,
      bool? autoDismissible,
      bool? roundedLargeIcon,
      String? notificationLayout,
      bool? showWhen,
      String? privacy}) {
    return _Content(
      id: id,
      title: title,
      payload: payload,
      body: body,
      largeIcon: largeIcon,
      summary: summary,
      channelKey: channelKey,
      category: category,
      autoDismissible: autoDismissible,
      roundedLargeIcon: roundedLargeIcon,
      notificationLayout: notificationLayout,
      showWhen: showWhen,
      privacy: privacy,
    );
  }

  Content fromJson(Map<String, Object?> json) {
    return Content.fromJson(json);
  }
}

/// @nodoc
const $Content = _$ContentTearOff();

/// @nodoc
mixin _$Content {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Payload? get payload => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get largeIcon => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get channelKey => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  bool? get autoDismissible => throw _privateConstructorUsedError;
  bool? get roundedLargeIcon => throw _privateConstructorUsedError;
  String? get notificationLayout => throw _privateConstructorUsedError;
  bool? get showWhen => throw _privateConstructorUsedError;
  String? get privacy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      Payload? payload,
      String? body,
      String? largeIcon,
      String? summary,
      String? channelKey,
      String? category,
      bool? autoDismissible,
      bool? roundedLargeIcon,
      String? notificationLayout,
      bool? showWhen,
      String? privacy});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? payload = freezed,
    Object? body = freezed,
    Object? largeIcon = freezed,
    Object? summary = freezed,
    Object? channelKey = freezed,
    Object? category = freezed,
    Object? autoDismissible = freezed,
    Object? roundedLargeIcon = freezed,
    Object? notificationLayout = freezed,
    Object? showWhen = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      largeIcon: largeIcon == freezed
          ? _value.largeIcon
          : largeIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      channelKey: channelKey == freezed
          ? _value.channelKey
          : channelKey // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      autoDismissible: autoDismissible == freezed
          ? _value.autoDismissible
          : autoDismissible // ignore: cast_nullable_to_non_nullable
              as bool?,
      roundedLargeIcon: roundedLargeIcon == freezed
          ? _value.roundedLargeIcon
          : roundedLargeIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationLayout: notificationLayout == freezed
          ? _value.notificationLayout
          : notificationLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      showWhen: showWhen == freezed
          ? _value.showWhen
          : showWhen // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacy: privacy == freezed
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      Payload? payload,
      String? body,
      String? largeIcon,
      String? summary,
      String? channelKey,
      String? category,
      bool? autoDismissible,
      bool? roundedLargeIcon,
      String? notificationLayout,
      bool? showWhen,
      String? privacy});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? payload = freezed,
    Object? body = freezed,
    Object? largeIcon = freezed,
    Object? summary = freezed,
    Object? channelKey = freezed,
    Object? category = freezed,
    Object? autoDismissible = freezed,
    Object? roundedLargeIcon = freezed,
    Object? notificationLayout = freezed,
    Object? showWhen = freezed,
    Object? privacy = freezed,
  }) {
    return _then(_Content(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      largeIcon: largeIcon == freezed
          ? _value.largeIcon
          : largeIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      channelKey: channelKey == freezed
          ? _value.channelKey
          : channelKey // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      autoDismissible: autoDismissible == freezed
          ? _value.autoDismissible
          : autoDismissible // ignore: cast_nullable_to_non_nullable
              as bool?,
      roundedLargeIcon: roundedLargeIcon == freezed
          ? _value.roundedLargeIcon
          : roundedLargeIcon // ignore: cast_nullable_to_non_nullable
              as bool?,
      notificationLayout: notificationLayout == freezed
          ? _value.notificationLayout
          : notificationLayout // ignore: cast_nullable_to_non_nullable
              as String?,
      showWhen: showWhen == freezed
          ? _value.showWhen
          : showWhen // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacy: privacy == freezed
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Content implements _Content {
  _$_Content(
      {this.id,
      this.title,
      this.payload,
      this.body,
      this.largeIcon,
      this.summary,
      this.channelKey,
      this.category,
      this.autoDismissible,
      this.roundedLargeIcon,
      this.notificationLayout,
      this.showWhen,
      this.privacy});

  factory _$_Content.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final Payload? payload;
  @override
  final String? body;
  @override
  final String? largeIcon;
  @override
  final String? summary;
  @override
  final String? channelKey;
  @override
  final String? category;
  @override
  final bool? autoDismissible;
  @override
  final bool? roundedLargeIcon;
  @override
  final String? notificationLayout;
  @override
  final bool? showWhen;
  @override
  final String? privacy;

  @override
  String toString() {
    return 'Content(id: $id, title: $title, payload: $payload, body: $body, largeIcon: $largeIcon, summary: $summary, channelKey: $channelKey, category: $category, autoDismissible: $autoDismissible, roundedLargeIcon: $roundedLargeIcon, notificationLayout: $notificationLayout, showWhen: $showWhen, privacy: $privacy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.largeIcon, largeIcon) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality()
                .equals(other.channelKey, channelKey) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.autoDismissible, autoDismissible) &&
            const DeepCollectionEquality()
                .equals(other.roundedLargeIcon, roundedLargeIcon) &&
            const DeepCollectionEquality()
                .equals(other.notificationLayout, notificationLayout) &&
            const DeepCollectionEquality().equals(other.showWhen, showWhen) &&
            const DeepCollectionEquality().equals(other.privacy, privacy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(largeIcon),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(channelKey),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(autoDismissible),
      const DeepCollectionEquality().hash(roundedLargeIcon),
      const DeepCollectionEquality().hash(notificationLayout),
      const DeepCollectionEquality().hash(showWhen),
      const DeepCollectionEquality().hash(privacy));

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentToJson(this);
  }
}

abstract class _Content implements Content {
  factory _Content(
      {String? id,
      String? title,
      Payload? payload,
      String? body,
      String? largeIcon,
      String? summary,
      String? channelKey,
      String? category,
      bool? autoDismissible,
      bool? roundedLargeIcon,
      String? notificationLayout,
      bool? showWhen,
      String? privacy}) = _$_Content;

  factory _Content.fromJson(Map<String, dynamic> json) = _$_Content.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  Payload? get payload;
  @override
  String? get body;
  @override
  String? get largeIcon;
  @override
  String? get summary;
  @override
  String? get channelKey;
  @override
  String? get category;
  @override
  bool? get autoDismissible;
  @override
  bool? get roundedLargeIcon;
  @override
  String? get notificationLayout;
  @override
  bool? get showWhen;
  @override
  String? get privacy;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
