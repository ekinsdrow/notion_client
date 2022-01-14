// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthBody _$AuthBodyFromJson(Map<String, dynamic> json) {
  return _AuthBody.fromJson(json);
}

/// @nodoc
class _$AuthBodyTearOff {
  const _$AuthBodyTearOff();

  _AuthBody call(
      {@JsonKey(name: 'redirect_uri') required String redirectUri,
      @JsonKey(name: 'grant_type') String grantType = 'authorization_code',
      required String code}) {
    return _AuthBody(
      redirectUri: redirectUri,
      grantType: grantType,
      code: code,
    );
  }

  AuthBody fromJson(Map<String, Object?> json) {
    return AuthBody.fromJson(json);
  }
}

/// @nodoc
const $AuthBody = _$AuthBodyTearOff();

/// @nodoc
mixin _$AuthBody {
  @JsonKey(name: 'redirect_uri')
  String get redirectUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_type')
  String get grantType => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthBodyCopyWith<AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBodyCopyWith<$Res> {
  factory $AuthBodyCopyWith(AuthBody value, $Res Function(AuthBody) then) =
      _$AuthBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'redirect_uri') String redirectUri,
      @JsonKey(name: 'grant_type') String grantType,
      String code});
}

/// @nodoc
class _$AuthBodyCopyWithImpl<$Res> implements $AuthBodyCopyWith<$Res> {
  _$AuthBodyCopyWithImpl(this._value, this._then);

  final AuthBody _value;
  // ignore: unused_field
  final $Res Function(AuthBody) _then;

  @override
  $Res call({
    Object? redirectUri = freezed,
    Object? grantType = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      redirectUri: redirectUri == freezed
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: grantType == freezed
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthBodyCopyWith<$Res> implements $AuthBodyCopyWith<$Res> {
  factory _$AuthBodyCopyWith(_AuthBody value, $Res Function(_AuthBody) then) =
      __$AuthBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'redirect_uri') String redirectUri,
      @JsonKey(name: 'grant_type') String grantType,
      String code});
}

/// @nodoc
class __$AuthBodyCopyWithImpl<$Res> extends _$AuthBodyCopyWithImpl<$Res>
    implements _$AuthBodyCopyWith<$Res> {
  __$AuthBodyCopyWithImpl(_AuthBody _value, $Res Function(_AuthBody) _then)
      : super(_value, (v) => _then(v as _AuthBody));

  @override
  _AuthBody get _value => super._value as _AuthBody;

  @override
  $Res call({
    Object? redirectUri = freezed,
    Object? grantType = freezed,
    Object? code = freezed,
  }) {
    return _then(_AuthBody(
      redirectUri: redirectUri == freezed
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: grantType == freezed
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthBody implements _AuthBody {
  _$_AuthBody(
      {@JsonKey(name: 'redirect_uri') required this.redirectUri,
      @JsonKey(name: 'grant_type') this.grantType = 'authorization_code',
      required this.code});

  factory _$_AuthBody.fromJson(Map<String, dynamic> json) =>
      _$$_AuthBodyFromJson(json);

  @override
  @JsonKey(name: 'redirect_uri')
  final String redirectUri;
  @override
  @JsonKey(name: 'grant_type')
  final String grantType;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthBody(redirectUri: $redirectUri, grantType: $grantType, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthBody &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, redirectUri, grantType, code);

  @JsonKey(ignore: true)
  @override
  _$AuthBodyCopyWith<_AuthBody> get copyWith =>
      __$AuthBodyCopyWithImpl<_AuthBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthBodyToJson(this);
  }
}

abstract class _AuthBody implements AuthBody {
  factory _AuthBody(
      {@JsonKey(name: 'redirect_uri') required String redirectUri,
      @JsonKey(name: 'grant_type') String grantType,
      required String code}) = _$_AuthBody;

  factory _AuthBody.fromJson(Map<String, dynamic> json) = _$_AuthBody.fromJson;

  @override
  @JsonKey(name: 'redirect_uri')
  String get redirectUri;
  @override
  @JsonKey(name: 'grant_type')
  String get grantType;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$AuthBodyCopyWith<_AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}
