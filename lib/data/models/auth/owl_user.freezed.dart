// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'owl_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Owl _$OwlFromJson(Map<String, dynamic> json) {
  return _Owl.fromJson(json);
}

/// @nodoc
class _$OwlTearOff {
  const _$OwlTearOff();

  _Owl call(
      {required String id,
      required String userName,
      required String email,
      String? onChat,
      String? lastSeen,
      String? token,
      String? photoUri,
      String? country,
      String? userState,
      String? userTheme,
      List<String>? chats,
      List<String>? friends,
      List<String>? blockedList}) {
    return _Owl(
      id: id,
      userName: userName,
      email: email,
      onChat: onChat,
      lastSeen: lastSeen,
      token: token,
      photoUri: photoUri,
      country: country,
      userState: userState,
      userTheme: userTheme,
      chats: chats,
      friends: friends,
      blockedList: blockedList,
    );
  }

  Owl fromJson(Map<String, Object?> json) {
    return Owl.fromJson(json);
  }
}

/// @nodoc
const $Owl = _$OwlTearOff();

/// @nodoc
mixin _$Owl {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get onChat => throw _privateConstructorUsedError;
  String? get lastSeen => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get photoUri => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get userState => throw _privateConstructorUsedError;
  String? get userTheme => throw _privateConstructorUsedError;
  List<String>? get chats => throw _privateConstructorUsedError;
  List<String>? get friends => throw _privateConstructorUsedError;
  List<String>? get blockedList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwlCopyWith<Owl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwlCopyWith<$Res> {
  factory $OwlCopyWith(Owl value, $Res Function(Owl) then) =
      _$OwlCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userName,
      String email,
      String? onChat,
      String? lastSeen,
      String? token,
      String? photoUri,
      String? country,
      String? userState,
      String? userTheme,
      List<String>? chats,
      List<String>? friends,
      List<String>? blockedList});
}

/// @nodoc
class _$OwlCopyWithImpl<$Res> implements $OwlCopyWith<$Res> {
  _$OwlCopyWithImpl(this._value, this._then);

  final Owl _value;
  // ignore: unused_field
  final $Res Function(Owl) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? onChat = freezed,
    Object? lastSeen = freezed,
    Object? token = freezed,
    Object? photoUri = freezed,
    Object? country = freezed,
    Object? userState = freezed,
    Object? userTheme = freezed,
    Object? chats = freezed,
    Object? friends = freezed,
    Object? blockedList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      onChat: onChat == freezed
          ? _value.onChat
          : onChat // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUri: photoUri == freezed
          ? _value.photoUri
          : photoUri // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as String?,
      userTheme: userTheme == freezed
          ? _value.userTheme
          : userTheme // ignore: cast_nullable_to_non_nullable
              as String?,
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blockedList: blockedList == freezed
          ? _value.blockedList
          : blockedList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$OwlCopyWith<$Res> implements $OwlCopyWith<$Res> {
  factory _$OwlCopyWith(_Owl value, $Res Function(_Owl) then) =
      __$OwlCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userName,
      String email,
      String? onChat,
      String? lastSeen,
      String? token,
      String? photoUri,
      String? country,
      String? userState,
      String? userTheme,
      List<String>? chats,
      List<String>? friends,
      List<String>? blockedList});
}

/// @nodoc
class __$OwlCopyWithImpl<$Res> extends _$OwlCopyWithImpl<$Res>
    implements _$OwlCopyWith<$Res> {
  __$OwlCopyWithImpl(_Owl _value, $Res Function(_Owl) _then)
      : super(_value, (v) => _then(v as _Owl));

  @override
  _Owl get _value => super._value as _Owl;

  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? onChat = freezed,
    Object? lastSeen = freezed,
    Object? token = freezed,
    Object? photoUri = freezed,
    Object? country = freezed,
    Object? userState = freezed,
    Object? userTheme = freezed,
    Object? chats = freezed,
    Object? friends = freezed,
    Object? blockedList = freezed,
  }) {
    return _then(_Owl(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      onChat: onChat == freezed
          ? _value.onChat
          : onChat // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUri: photoUri == freezed
          ? _value.photoUri
          : photoUri // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      userState: userState == freezed
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as String?,
      userTheme: userTheme == freezed
          ? _value.userTheme
          : userTheme // ignore: cast_nullable_to_non_nullable
              as String?,
      chats: chats == freezed
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      friends: friends == freezed
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blockedList: blockedList == freezed
          ? _value.blockedList
          : blockedList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Owl implements _Owl {
  const _$_Owl(
      {required this.id,
      required this.userName,
      required this.email,
      this.onChat,
      this.lastSeen,
      this.token,
      this.photoUri,
      this.country,
      this.userState,
      this.userTheme,
      this.chats,
      this.friends,
      this.blockedList});

  factory _$_Owl.fromJson(Map<String, dynamic> json) => _$$_OwlFromJson(json);

  @override
  final String id;
  @override
  final String userName;
  @override
  final String email;
  @override
  final String? onChat;
  @override
  final String? lastSeen;
  @override
  final String? token;
  @override
  final String? photoUri;
  @override
  final String? country;
  @override
  final String? userState;
  @override
  final String? userTheme;
  @override
  final List<String>? chats;
  @override
  final List<String>? friends;
  @override
  final List<String>? blockedList;

  @override
  String toString() {
    return 'Owl(id: $id, userName: $userName, email: $email, onChat: $onChat, lastSeen: $lastSeen, token: $token, photoUri: $photoUri, country: $country, userState: $userState, userTheme: $userTheme, chats: $chats, friends: $friends, blockedList: $blockedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Owl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.onChat, onChat) || other.onChat == onChat) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.photoUri, photoUri) ||
                other.photoUri == photoUri) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.userState, userState) ||
                other.userState == userState) &&
            (identical(other.userTheme, userTheme) ||
                other.userTheme == userTheme) &&
            const DeepCollectionEquality().equals(other.chats, chats) &&
            const DeepCollectionEquality().equals(other.friends, friends) &&
            const DeepCollectionEquality()
                .equals(other.blockedList, blockedList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      email,
      onChat,
      lastSeen,
      token,
      photoUri,
      country,
      userState,
      userTheme,
      const DeepCollectionEquality().hash(chats),
      const DeepCollectionEquality().hash(friends),
      const DeepCollectionEquality().hash(blockedList));

  @JsonKey(ignore: true)
  @override
  _$OwlCopyWith<_Owl> get copyWith =>
      __$OwlCopyWithImpl<_Owl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OwlToJson(this);
  }
}

abstract class _Owl implements Owl {
  const factory _Owl(
      {required String id,
      required String userName,
      required String email,
      String? onChat,
      String? lastSeen,
      String? token,
      String? photoUri,
      String? country,
      String? userState,
      String? userTheme,
      List<String>? chats,
      List<String>? friends,
      List<String>? blockedList}) = _$_Owl;

  factory _Owl.fromJson(Map<String, dynamic> json) = _$_Owl.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get email;
  @override
  String? get onChat;
  @override
  String? get lastSeen;
  @override
  String? get token;
  @override
  String? get photoUri;
  @override
  String? get country;
  @override
  String? get userState;
  @override
  String? get userTheme;
  @override
  List<String>? get chats;
  @override
  List<String>? get friends;
  @override
  List<String>? get blockedList;
  @override
  @JsonKey(ignore: true)
  _$OwlCopyWith<_Owl> get copyWith => throw _privateConstructorUsedError;
}
