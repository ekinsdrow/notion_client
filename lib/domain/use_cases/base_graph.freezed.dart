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

/// @nodoc
class _$BaseObjectLeafTearOff {
  const _$BaseObjectLeafTearOff();

  _BaseObjectLeaf call(
      {required BaseObject baseObject,
      required BaseObjectLeaf? parent,
      required List<BaseObjectLeaf> children}) {
    return _BaseObjectLeaf(
      baseObject: baseObject,
      parent: parent,
      children: children,
    );
  }
}

/// @nodoc
const $BaseObjectLeaf = _$BaseObjectLeafTearOff();

/// @nodoc
mixin _$BaseObjectLeaf {
  BaseObject get baseObject => throw _privateConstructorUsedError;
  BaseObjectLeaf? get parent => throw _privateConstructorUsedError;
  List<BaseObjectLeaf> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseObjectLeafCopyWith<BaseObjectLeaf> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseObjectLeafCopyWith<$Res> {
  factory $BaseObjectLeafCopyWith(
          BaseObjectLeaf value, $Res Function(BaseObjectLeaf) then) =
      _$BaseObjectLeafCopyWithImpl<$Res>;
  $Res call(
      {BaseObject baseObject,
      BaseObjectLeaf? parent,
      List<BaseObjectLeaf> children});

  $BaseObjectLeafCopyWith<$Res>? get parent;
}

/// @nodoc
class _$BaseObjectLeafCopyWithImpl<$Res>
    implements $BaseObjectLeafCopyWith<$Res> {
  _$BaseObjectLeafCopyWithImpl(this._value, this._then);

  final BaseObjectLeaf _value;
  // ignore: unused_field
  final $Res Function(BaseObjectLeaf) _then;

  @override
  $Res call({
    Object? baseObject = freezed,
    Object? parent = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      baseObject: baseObject == freezed
          ? _value.baseObject
          : baseObject // ignore: cast_nullable_to_non_nullable
              as BaseObject,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BaseObjectLeaf?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BaseObjectLeaf>,
    ));
  }

  @override
  $BaseObjectLeafCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $BaseObjectLeafCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value));
    });
  }
}

/// @nodoc
abstract class _$BaseObjectLeafCopyWith<$Res>
    implements $BaseObjectLeafCopyWith<$Res> {
  factory _$BaseObjectLeafCopyWith(
          _BaseObjectLeaf value, $Res Function(_BaseObjectLeaf) then) =
      __$BaseObjectLeafCopyWithImpl<$Res>;
  @override
  $Res call(
      {BaseObject baseObject,
      BaseObjectLeaf? parent,
      List<BaseObjectLeaf> children});

  @override
  $BaseObjectLeafCopyWith<$Res>? get parent;
}

/// @nodoc
class __$BaseObjectLeafCopyWithImpl<$Res>
    extends _$BaseObjectLeafCopyWithImpl<$Res>
    implements _$BaseObjectLeafCopyWith<$Res> {
  __$BaseObjectLeafCopyWithImpl(
      _BaseObjectLeaf _value, $Res Function(_BaseObjectLeaf) _then)
      : super(_value, (v) => _then(v as _BaseObjectLeaf));

  @override
  _BaseObjectLeaf get _value => super._value as _BaseObjectLeaf;

  @override
  $Res call({
    Object? baseObject = freezed,
    Object? parent = freezed,
    Object? children = freezed,
  }) {
    return _then(_BaseObjectLeaf(
      baseObject: baseObject == freezed
          ? _value.baseObject
          : baseObject // ignore: cast_nullable_to_non_nullable
              as BaseObject,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BaseObjectLeaf?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BaseObjectLeaf>,
    ));
  }
}

/// @nodoc

class _$_BaseObjectLeaf implements _BaseObjectLeaf {
  _$_BaseObjectLeaf(
      {required this.baseObject, required this.parent, required this.children});

  @override
  final BaseObject baseObject;
  @override
  final BaseObjectLeaf? parent;
  @override
  final List<BaseObjectLeaf> children;

  @override
  String toString() {
    return 'BaseObjectLeaf(baseObject: $baseObject, parent: $parent, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseObjectLeaf &&
            (identical(other.baseObject, baseObject) ||
                other.baseObject == baseObject) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseObject, parent,
      const DeepCollectionEquality().hash(children));

  @JsonKey(ignore: true)
  @override
  _$BaseObjectLeafCopyWith<_BaseObjectLeaf> get copyWith =>
      __$BaseObjectLeafCopyWithImpl<_BaseObjectLeaf>(this, _$identity);
}

abstract class _BaseObjectLeaf implements BaseObjectLeaf {
  factory _BaseObjectLeaf(
      {required BaseObject baseObject,
      required BaseObjectLeaf? parent,
      required List<BaseObjectLeaf> children}) = _$_BaseObjectLeaf;

  @override
  BaseObject get baseObject;
  @override
  BaseObjectLeaf? get parent;
  @override
  List<BaseObjectLeaf> get children;
  @override
  @JsonKey(ignore: true)
  _$BaseObjectLeafCopyWith<_BaseObjectLeaf> get copyWith =>
      throw _privateConstructorUsedError;
}
