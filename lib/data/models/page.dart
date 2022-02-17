import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/base_object_parent.dart';
import 'package:notion_client/data/models/emoji_icon.dart';
import 'package:notion_client/data/models/interfaces/base_object.dart';
import 'package:notion_client/data/models/page_properties.dart';

part 'page.g.dart';

@JsonSerializable()
class Page implements BaseObject {
  Page({
    required this.id,
    required this.pageProperties,
    required this.parent,
    required this.emojiIcon,
  });

  @override
  final String id;

  @override
  final BaseObjectParent parent;

  @override
  @JsonKey(
    fromJson: BaseObject.emojiIconFromJson,
    name: 'icon',
  )
  final EmojiIcon? emojiIcon;

  @override
  String get title {
    if (pageProperties.title != null) {
      if (pageProperties.title!.isNotEmpty) {
        return pageProperties.title!.first.plainText;
      }
    }
    return '';
  }

  @JsonKey(name: 'properties')
  final PageProperties pageProperties;

  factory Page.fromJson(Map<String, dynamic> json) {
    return _$PageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PageToJson(this);
}
