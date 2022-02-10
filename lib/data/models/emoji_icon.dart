import 'package:json_annotation/json_annotation.dart';
part 'emoji_icon.g.dart';

//TODO: shared type to icon
@JsonSerializable()
class EmojiIcon {
  final String type;
  final String emoji;
  EmojiIcon({
    required this.type,
    required this.emoji,
  });

  factory EmojiIcon.fromJson(Map<String, dynamic> json) => _$EmojiIconFromJson(json);
  Map<String, dynamic> toJson() => _$EmojiIconToJson(this);
}
