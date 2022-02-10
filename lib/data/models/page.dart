import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/base_object.dart';
import 'package:notion_client/data/models/emoji_icon.dart';
part 'page.g.dart';

@JsonSerializable()
class Page extends BaseObject {
  Page({
    required String id,
    required String object,
    required EmojiIcon? icon,
  }) : super(
          id: id,
          object: object,
          icon: icon,
        );


  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);
  
  @override
  Map<String, dynamic> toJson() => _$PageToJson(this);
}
