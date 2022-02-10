import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/base_object.dart';

import 'emoji_icon.dart';
part 'database.g.dart';

@JsonSerializable()
class Database extends BaseObject {
  Database({
    required String id,
    required String object,
    required EmojiIcon? icon,
  }) : super(
          id: id,
          object: object,
          icon: icon,
        );

  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);
  
  @override
  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}
