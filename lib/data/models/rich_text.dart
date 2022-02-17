import 'package:freezed_annotation/freezed_annotation.dart';

part 'rich_text.freezed.dart';
part 'rich_text.g.dart';

@freezed
class RichText with _$RichText {
  factory RichText({
    @JsonKey(name: 'plain_text') required String plainText,
  }) = _RichText;

  factory RichText.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RichTextFromJson(
        json,
      );
}
