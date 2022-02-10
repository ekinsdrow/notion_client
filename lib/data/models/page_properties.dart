
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notion_client/data/models/rich_text.dart';

part 'page_properties.g.dart';

@JsonSerializable()
class PageProperties {
  PageProperties({
    required this.title,
  });

  final List<RichText>? title;

  factory PageProperties.fromJson(Map<String, dynamic> json) {
    List<RichText>? title;

    if (json['title'] != null) {
      title = [
        for (final t in json['title']['title']) RichText.fromJson(t),
      ];
    }

    return PageProperties(
      title: title,
    );
  }

  Map<String, dynamic> toJson() => _$PagePropertiesToJson(this);
}
