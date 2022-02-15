// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseGraphLeaf _$BaseGraphLeafFromJson(Map<String, dynamic> json) {
  return _BaseGraphLeaf.fromJson(json);
}

/// @nodoc
class _$BaseGraphLeafTearOff {
  const _$BaseGraphLeafTearOff();

  _BaseGraphLeaf call(
      {required BaseObject baseObject, required List<BaseObject> children}) {
    return _BaseGraphLeaf(
      baseObject: baseObject,
      children: children,
    );
  }

  BaseGraphLeaf fromJson(Map<String, Object?> json) {
    return BaseGraphLeaf.fromJson(json);
  }
}

/// @nodoc
const $BaseGraphLeaf = _$BaseGraphLeafTearOff();

/// @nodoc
mixin _$BaseGraphLeaf {
  BaseObject get baseObject => throw _privateConstructorUsedError;
  List<BaseObject> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseGraphLeafCopyWith<BaseGraphLeaf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseGraphLeafCopyWith<$Res> {
  factory $BaseGraphLeafCopyWith(
          BaseGraphLeaf value, $Res Function(BaseGraphLeaf) then) =
      _$BaseGraphLeafCopyWithImpl<$Res>;
  $Res call({BaseObject baseObject, List<BaseObject> children});
}

/// @nodoc
class _$BaseGraphLeafCopyWithImpl<$Res>
    implements $BaseGraphLeafCopyWith<$Res> {
  _$BaseGraphLeafCopyWithImpl(this._value, this._then);

  final BaseGraphLeaf _value;
  // ignore: unused_field
  final $Res Function(BaseGraphLeaf) _then;

  @override
  $Res call({
    Object? baseObject = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      baseObject: baseObject == freezed
          ? _value.baseObject
          : baseObject // ignore: cast_nullable_to_non_nullable
              as BaseObject,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BaseObject>,
    ));
  }
}

/// @nodoc
abstract class _$BaseGraphLeafCopyWith<$Res>
    implements $BaseGraphLeafCopyWith<$Res> {
  factory _$BaseGraphLeafCopyWith(
          _BaseGraphLeaf value, $Res Function(_BaseGraphLeaf) then) =
      __$BaseGraphLeafCopyWithImpl<$Res>;
  @override
  $Res call({BaseObject baseObject, List<BaseObject> children});
}

/// @nodoc
class __$BaseGraphLeafCopyWithImpl<$Res>
    extends _$BaseGraphLeafCopyWithImpl<$Res>
    implements _$BaseGraphLeafCopyWith<$Res> {
  __$BaseGraphLeafCopyWithImpl(
      _BaseGraphLeaf _value, $Res Function(_BaseGraphLeaf) _then)
      : super(_value, (v) => _then(v as _BaseGraphLeaf));

  @override
  _BaseGraphLeaf get _value => super._value as _BaseGraphLeaf;

  @override
  $Res call({
    Object? baseObject = freezed,
    Object? children = freezed,
  }) {
    return _then(_BaseGraphLeaf(
      baseObject: baseObject == freezed
          ? _value.baseObject
          : baseObject // ignore: cast_nullable_to_non_nullable
              as BaseObject,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BaseObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseGraphLeaf implements _BaseGraphLeaf {
  _$_BaseGraphLeaf({required this.baseObject, required this.children});

  factory _$_BaseGraphLeaf.fromJson(Map<String, dynamic> json) =>
      _$$_BaseGraphLeafFromJson(json);

  @override
  final BaseObject baseObject;
  @override
  final List<BaseObject> children;

  @override
  String toString() {
    return 'BaseGraphLeaf(baseObject: $baseObject, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseGraphLeaf &&
            (identical(other.baseObject, baseObject) ||
                other.baseObject == baseObject) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, baseObject, const DeepCollectionEquality().hash(children));

  @JsonKey(ignore: true)
  @override
  _$BaseGraphLeafCopyWith<_BaseGraphLeaf> get copyWith =>
      __$BaseGraphLeafCopyWithImpl<_BaseGraphLeaf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseGraphLeafToJson(this);
  }
}

abstract class _BaseGraphLeaf implements BaseGraphLeaf {
  factory _BaseGraphLeaf(
      {required BaseObject baseObject,
      required List<BaseObject> children}) = _$_BaseGraphLeaf;

  factory _BaseGraphLeaf.fromJson(Map<String, dynamic> json) =
      _$_BaseGraphLeaf.fromJson;

  @override
  BaseObject get baseObject;
  @override
  List<BaseObject> get children;
  @override
  @JsonKey(ignore: true)
  _$BaseGraphLeafCopyWith<_BaseGraphLeaf> get copyWith =>
      throw _privateConstructorUsedError;
}
