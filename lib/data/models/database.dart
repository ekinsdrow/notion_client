import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/rich_text.dart';
import 'emoji_icon.dart';
import 'interfaces/base_object.dart';
part 'database.g.dart';

@JsonSerializable()
class Database implements BaseObject {
  Database({
    required this.object,
    required this.id,
    required this.icon,
    required this.richTextTitle,
  });

  @override
  final String id;

  @override
  final String object;

  @override
  final EmojiIcon? icon;

  @override
  String get title => richTextTitle.first.plainText;


  @JsonKey(name: 'title')
  final List<RichText> richTextTitle;


  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}
