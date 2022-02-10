import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/base_object.dart';
part 'base_list.g.dart';

@JsonSerializable()
class BaseList {
  BaseList({
    required this.object,
    required this.nextCursor,
    required this.hasMore,
    required this.results,
  });

  final String object;

  @JsonKey(name: 'next_cursor')
  final String? nextCursor;

  @JsonKey(name: 'has_more')
  final bool hasMore;

  final List<BaseObject> results;

  factory BaseList.fromJson(Map<String, dynamic> json) => _$BaseListFromJson(json);
  Map<String, dynamic> toJson() => _$BaseListToJson(this);
}
