// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'emoji_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmojiIcon _$EmojiIconFromJson(Map<String, dynamic> json) {
  return _EmojiIcon.fromJson(json);
}

/// @nodoc
class _$EmojiIconTearOff {
  const _$EmojiIconTearOff();

  _EmojiIcon call({required String emoji}) {
    return _EmojiIcon(
      emoji: emoji,
    );
  }

  EmojiIcon fromJson(Map<String, Object?> json) {
    return EmojiIcon.fromJson(json);
  }
}

/// @nodoc
const $EmojiIcon = _$EmojiIconTearOff();

/// @nodoc
mixin _$EmojiIcon {
  String get emoji => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmojiIconCopyWith<EmojiIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmojiIconCopyWith<$Res> {
  factory $EmojiIconCopyWith(EmojiIcon value, $Res Function(EmojiIcon) then) =
      _$EmojiIconCopyWithImpl<$Res>;
  $Res call({String emoji});
}

/// @nodoc
class _$EmojiIconCopyWithImpl<$Res> implements $EmojiIconCopyWith<$Res> {
  _$EmojiIconCopyWithImpl(this._value, this._then);

  final EmojiIcon _value;
  // ignore: unused_field
  final $Res Function(EmojiIcon) _then;

  @override
  $Res call({
    Object? emoji = freezed,
  }) {
    return _then(_value.copyWith(
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmojiIconCopyWith<$Res> implements $EmojiIconCopyWith<$Res> {
  factory _$EmojiIconCopyWith(
          _EmojiIcon value, $Res Function(_EmojiIcon) then) =
      __$EmojiIconCopyWithImpl<$Res>;
  @override
  $Res call({String emoji});
}

/// @nodoc
class __$EmojiIconCopyWithImpl<$Res> extends _$EmojiIconCopyWithImpl<$Res>
    implements _$EmojiIconCopyWith<$Res> {
  __$EmojiIconCopyWithImpl(_EmojiIcon _value, $Res Function(_EmojiIcon) _then)
      : super(_value, (v) => _then(v as _EmojiIcon));

  @override
  _EmojiIcon get _value => super._value as _EmojiIcon;

  @override
  $Res call({
    Object? emoji = freezed,
  }) {
    return _then(_EmojiIcon(
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmojiIcon implements _EmojiIcon {
  _$_EmojiIcon({required this.emoji});

  factory _$_EmojiIcon.fromJson(Map<String, dynamic> json) =>
      _$$_EmojiIconFromJson(json);

  @override
  final String emoji;

  @override
  String toString() {
    return 'EmojiIcon(emoji: $emoji)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmojiIcon &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji);

  @JsonKey(ignore: true)
  @override
  _$EmojiIconCopyWith<_EmojiIcon> get copyWith =>
      __$EmojiIconCopyWithImpl<_EmojiIcon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmojiIconToJson(this);
  }
}

abstract class _EmojiIcon implements EmojiIcon {
  factory _EmojiIcon({required String emoji}) = _$_EmojiIcon;

  factory _EmojiIcon.fromJson(Map<String, dynamic> json) =
      _$_EmojiIcon.fromJson;

  @override
  String get emoji;
  @override
  @JsonKey(ignore: true)
  _$EmojiIconCopyWith<_EmojiIcon> get copyWith =>
      throw _privateConstructorUsedError;
}
