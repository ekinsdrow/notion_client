// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_object_parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseObjectParent _$BaseObjectParentFromJson(Map<String, dynamic> json) {
  return _BaseObjectParent.fromJson(json);
}

/// @nodoc
class _$BaseObjectParentTearOff {
  const _$BaseObjectParentTearOff();

  _BaseObjectParent call(
      {required BaseObjectParentType type,
      @JsonKey(name: 'database_id') required String? databaseId,
      @JsonKey(name: 'page_id') required String? pageId}) {
    return _BaseObjectParent(
      type: type,
      databaseId: databaseId,
      pageId: pageId,
    );
  }

  BaseObjectParent fromJson(Map<String, Object?> json) {
    return BaseObjectParent.fromJson(json);
  }
}

/// @nodoc
const $BaseObjectParent = _$BaseObjectParentTearOff();

/// @nodoc
mixin _$BaseObjectParent {
  BaseObjectParentType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'database_id')
  String? get databaseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_id')
  String? get pageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseObjectParentCopyWith<BaseObjectParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseObjectParentCopyWith<$Res> {
  factory $BaseObjectParentCopyWith(
          BaseObjectParent value, $Res Function(BaseObjectParent) then) =
      _$BaseObjectParentCopyWithImpl<$Res>;
  $Res call(
      {BaseObjectParentType type,
      @JsonKey(name: 'database_id') String? databaseId,
      @JsonKey(name: 'page_id') String? pageId});
}

/// @nodoc
class _$BaseObjectParentCopyWithImpl<$Res>
    implements $BaseObjectParentCopyWith<$Res> {
  _$BaseObjectParentCopyWithImpl(this._value, this._then);

  final BaseObjectParent _value;
  // ignore: unused_field
  final $Res Function(BaseObjectParent) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? databaseId = freezed,
    Object? pageId = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BaseObjectParentType,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BaseObjectParentCopyWith<$Res>
    implements $BaseObjectParentCopyWith<$Res> {
  factory _$BaseObjectParentCopyWith(
          _BaseObjectParent value, $Res Function(_BaseObjectParent) then) =
      __$BaseObjectParentCopyWithImpl<$Res>;
  @override
  $Res call(
      {BaseObjectParentType type,
      @JsonKey(name: 'database_id') String? databaseId,
      @JsonKey(name: 'page_id') String? pageId});
}

/// @nodoc
class __$BaseObjectParentCopyWithImpl<$Res>
    extends _$BaseObjectParentCopyWithImpl<$Res>
    implements _$BaseObjectParentCopyWith<$Res> {
  __$BaseObjectParentCopyWithImpl(
      _BaseObjectParent _value, $Res Function(_BaseObjectParent) _then)
      : super(_value, (v) => _then(v as _BaseObjectParent));

  @override
  _BaseObjectParent get _value => super._value as _BaseObjectParent;

  @override
  $Res call({
    Object? type = freezed,
    Object? databaseId = freezed,
    Object? pageId = freezed,
  }) {
    return _then(_BaseObjectParent(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BaseObjectParentType,
      databaseId: databaseId == freezed
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseObjectParent implements _BaseObjectParent {
  _$_BaseObjectParent(
      {required this.type,
      @JsonKey(name: 'database_id') required this.databaseId,
      @JsonKey(name: 'page_id') required this.pageId});

  factory _$_BaseObjectParent.fromJson(Map<String, dynamic> json) =>
      _$$_BaseObjectParentFromJson(json);

  @override
  final BaseObjectParentType type;
  @override
  @JsonKey(name: 'database_id')
  final String? databaseId;
  @override
  @JsonKey(name: 'page_id')
  final String? pageId;

  @override
  String toString() {
    return 'BaseObjectParent(type: $type, databaseId: $databaseId, pageId: $pageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseObjectParent &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId) &&
            (identical(other.pageId, pageId) || other.pageId == pageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, databaseId, pageId);

  @JsonKey(ignore: true)
  @override
  _$BaseObjectParentCopyWith<_BaseObjectParent> get copyWith =>
      __$BaseObjectParentCopyWithImpl<_BaseObjectParent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseObjectParentToJson(this);
  }
}

abstract class _BaseObjectParent implements BaseObjectParent {
  factory _BaseObjectParent(
      {required BaseObjectParentType type,
      @JsonKey(name: 'database_id') required String? databaseId,
      @JsonKey(name: 'page_id') required String? pageId}) = _$_BaseObjectParent;

  factory _BaseObjectParent.fromJson(Map<String, dynamic> json) =
      _$_BaseObjectParent.fromJson;

  @override
  BaseObjectParentType get type;
  @override
  @JsonKey(name: 'database_id')
  String? get databaseId;
  @override
  @JsonKey(name: 'page_id')
  String? get pageId;
  @override
  @JsonKey(ignore: true)
  _$BaseObjectParentCopyWith<_BaseObjectParent> get copyWith =>
      throw _privateConstructorUsedError;
}
