import 'package:notion_client/data/models/base_object_parent.dart';

import 'package:notion_client/data/models/emoji_icon.dart';

// Interface to Pages and Databases
abstract class BaseObject {
  String get id;
  String get title;
  BaseObjectParent get parent;
  EmojiIcon? get emojiIcon;

  static EmojiIcon? emojiIconFromJson(Map<String, dynamic>? json) {
    if (json != null) {
      if (json['type'] == 'emoji') {
        return EmojiIcon.fromJson(json);
      }
    }
  }
}
