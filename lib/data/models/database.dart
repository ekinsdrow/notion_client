import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/rich_text.dart';
import 'base_object_parent.dart';
import 'interfaces/base_object.dart';
part 'database.g.dart';

@JsonSerializable()
class Database implements BaseObject {
  Database({
    required this.object,
    required this.id,
    required this.richTextTitle,
    required this.parent,
  });

  @override
  final String id;

  @override
  final String object;

  @override
  final BaseObjectParent parent;

  @override
  String get title => richTextTitle.first.plainText;


  @JsonKey(name: 'title')
  final List<RichText> richTextTitle;


  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}
