import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/emoji_icon.dart';
part 'base_object.g.dart';

@JsonSerializable()
class BaseObject {
  final String id;
  final String object;
  final EmojiIcon? icon;
  BaseObject({
    required this.id,
    required this.object,
    required this.icon,
  });

  factory BaseObject.fromJson(Map<String, dynamic> json) => _$BaseObjectFromJson(json);
  Map<String, dynamic> toJson() => _$BaseObjectToJson(this);
}
