import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_object_parent.freezed.dart';
part 'base_object_parent.g.dart';

@freezed
class BaseObjectParent with _$BaseObjectParent {
  factory BaseObjectParent({
    required BaseObjectParentType type,
    @JsonKey(name: 'database_id') required String? databaseId,
    @JsonKey(name: 'page_id') required String? pageId,
  }) = _BaseObjectParent;

  factory BaseObjectParent.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseObjectParentFromJson(json);
}

enum BaseObjectParentType {
  workspace,
  @JsonValue('database_id')
  database,
  @JsonValue('page_id')
  page,
}
