// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rich_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RichText _$RichTextFromJson(Map<String, dynamic> json) {
  return _RichText.fromJson(json);
}

/// @nodoc
class _$RichTextTearOff {
  const _$RichTextTearOff();

  _RichText call({@JsonKey(name: 'plain_text') required String plainText}) {
    return _RichText(
      plainText: plainText,
    );
  }

  RichText fromJson(Map<String, Object?> json) {
    return RichText.fromJson(json);
  }
}

/// @nodoc
const $RichText = _$RichTextTearOff();

/// @nodoc
mixin _$RichText {
  @JsonKey(name: 'plain_text')
  String get plainText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RichTextCopyWith<RichText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RichTextCopyWith<$Res> {
  factory $RichTextCopyWith(RichText value, $Res Function(RichText) then) =
      _$RichTextCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'plain_text') String plainText});
}

/// @nodoc
class _$RichTextCopyWithImpl<$Res> implements $RichTextCopyWith<$Res> {
  _$RichTextCopyWithImpl(this._value, this._then);

  final RichText _value;
  // ignore: unused_field
  final $Res Function(RichText) _then;

  @override
  $Res call({
    Object? plainText = freezed,
  }) {
    return _then(_value.copyWith(
      plainText: plainText == freezed
          ? _value.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RichTextCopyWith<$Res> implements $RichTextCopyWith<$Res> {
  factory _$RichTextCopyWith(_RichText value, $Res Function(_RichText) then) =
      __$RichTextCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'plain_text') String plainText});
}

/// @nodoc
class __$RichTextCopyWithImpl<$Res> extends _$RichTextCopyWithImpl<$Res>
    implements _$RichTextCopyWith<$Res> {
  __$RichTextCopyWithImpl(_RichText _value, $Res Function(_RichText) _then)
      : super(_value, (v) => _then(v as _RichText));

  @override
  _RichText get _value => super._value as _RichText;

  @override
  $Res call({
    Object? plainText = freezed,
  }) {
    return _then(_RichText(
      plainText: plainText == freezed
          ? _value.plainText
          : plainText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RichText implements _RichText {
  _$_RichText({@JsonKey(name: 'plain_text') required this.plainText});

  factory _$_RichText.fromJson(Map<String, dynamic> json) =>
      _$$_RichTextFromJson(json);

  @override
  @JsonKey(name: 'plain_text')
  final String plainText;

  @override
  String toString() {
    return 'RichText(plainText: $plainText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RichText &&
            (identical(other.plainText, plainText) ||
                other.plainText == plainText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plainText);

  @JsonKey(ignore: true)
  @override
  _$RichTextCopyWith<_RichText> get copyWith =>
      __$RichTextCopyWithImpl<_RichText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RichTextToJson(this);
  }
}

abstract class _RichText implements RichText {
  factory _RichText({@JsonKey(name: 'plain_text') required String plainText}) =
      _$_RichText;

  factory _RichText.fromJson(Map<String, dynamic> json) = _$_RichText.fromJson;

  @override
  @JsonKey(name: 'plain_text')
  String get plainText;
  @override
  @JsonKey(ignore: true)
  _$RichTextCopyWith<_RichText> get copyWith =>
      throw _privateConstructorUsedError;
}
