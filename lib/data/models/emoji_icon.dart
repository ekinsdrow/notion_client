import 'package:freezed_annotation/freezed_annotation.dart';

part 'emoji_icon.freezed.dart';
part 'emoji_icon.g.dart';

@freezed
class EmojiIcon with _$EmojiIcon {
  factory EmojiIcon({required String emoji}) = _EmojiIcon;

  factory EmojiIcon.fromJson(Map<String, dynamic> json) => _$EmojiIconFromJson(json);
}
