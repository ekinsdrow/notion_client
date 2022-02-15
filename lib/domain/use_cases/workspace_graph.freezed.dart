// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workspace_graph.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BaseObjectNodeTearOff {
  const _$BaseObjectNodeTearOff();

  _BaseObjectNode call(
      {required BaseObject baseObject,
      required BaseObjectNode? parent,
      required List<BaseObjectNode> children}) {
    return _BaseObjectNode(
      baseObject: baseObject,
      parent: parent,
      children: children,
    );
  }
}

/// @nodoc
const $BaseObjectNode = _$BaseObjectNodeTearOff();

/// @nodoc
mixin _$BaseObjectNode {
  BaseObject get baseObject => throw _privateConstructorUsedError;
  BaseObjectNode? get parent => throw _privateConstructorUsedError;
  List<BaseObjectNode> get children => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseObjectNodeCopyWith<BaseObjectNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseObjectNodeCopyWith<$Res> {
  factory $BaseObjectNodeCopyWith(
          BaseObjectNode value, $Res Function(BaseObjectNode) then) =
      _$BaseObjectNodeCopyWithImpl<$Res>;
  $Res call(
      {BaseObject baseObject,
      BaseObjectNode? parent,
      List<BaseObjectNode> children});

  $BaseObjectNodeCopyWith<$Res>? get parent;
}

/// @nodoc
class _$BaseObjectNodeCopyWithImpl<$Res>
    implements $BaseObjectNodeCopyWith<$Res> {
  _$BaseObjectNodeCopyWithImpl(this._value, this._then);

  final BaseObjectNode _value;
  // ignore: unused_field
  final $Res Function(BaseObjectNode) _then;

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
              as BaseObjectNode?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BaseObjectNode>,
    ));
  }

  @override
  $BaseObjectNodeCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $BaseObjectNodeCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value));
    });
  }
}

/// @nodoc
abstract class _$BaseObjectNodeCopyWith<$Res>
    implements $BaseObjectNodeCopyWith<$Res> {
  factory _$BaseObjectNodeCopyWith(
          _BaseObjectNode value, $Res Function(_BaseObjectNode) then) =
      __$BaseObjectNodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {BaseObject baseObject,
      BaseObjectNode? parent,
      List<BaseObjectNode> children});

  @override
  $BaseObjectNodeCopyWith<$Res>? get parent;
}

/// @nodoc
class __$BaseObjectNodeCopyWithImpl<$Res>
    extends _$BaseObjectNodeCopyWithImpl<$Res>
    implements _$BaseObjectNodeCopyWith<$Res> {
  __$BaseObjectNodeCopyWithImpl(
      _BaseObjectNode _value, $Res Function(_BaseObjectNode) _then)
      : super(_value, (v) => _then(v as _BaseObjectNode));

  @override
  _BaseObjectNode get _value => super._value as _BaseObjectNode;

  @override
  $Res call({
    Object? baseObject = freezed,
    Object? parent = freezed,
    Object? children = freezed,
  }) {
    return _then(_BaseObjectNode(
      baseObject: baseObject == freezed
          ? _value.baseObject
          : baseObject // ignore: cast_nullable_to_non_nullable
              as BaseObject,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BaseObjectNode?,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<BaseObjectNode>,
    ));
  }
}

/// @nodoc

class _$_BaseObjectNode implements _BaseObjectNode {
  _$_BaseObjectNode(
      {required this.baseObject, required this.parent, required this.children});

  @override
  final BaseObject baseObject;
  @override
  final BaseObjectNode? parent;
  @override
  final List<BaseObjectNode> children;

  @override
  String toString() {
    return 'BaseObjectNode(baseObject: $baseObject, parent: $parent, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseObjectNode &&
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
  _$BaseObjectNodeCopyWith<_BaseObjectNode> get copyWith =>
      __$BaseObjectNodeCopyWithImpl<_BaseObjectNode>(this, _$identity);
}

abstract class _BaseObjectNode implements BaseObjectNode {
  factory _BaseObjectNode(
      {required BaseObject baseObject,
      required BaseObjectNode? parent,
      required List<BaseObjectNode> children}) = _$_BaseObjectNode;

  @override
  BaseObject get baseObject;
  @override
  BaseObjectNode? get parent;
  @override
  List<BaseObjectNode> get children;
  @override
  @JsonKey(ignore: true)
  _$BaseObjectNodeCopyWith<_BaseObjectNode> get copyWith =>
      throw _privateConstructorUsedError;
}
