import 'package:notion_client/data/models/emoji_icon.dart';

abstract class BaseObject {
  String get id;
  String get title;
  String get object;

  //TODO: change icon
  EmojiIcon? get icon;
}
