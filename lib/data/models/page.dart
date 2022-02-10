import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/emoji_icon.dart';

import 'interfaces/base_object.dart';
part 'page.g.dart';

@JsonSerializable()
class Page implements BaseObject {
  Page({
    required this.icon,
    required this.id,
    required this.object,
  });

  @override
  final String id;

  @override
  final String object;

  @override
  final EmojiIcon? icon;

  @override
  // TODO: implement title
  String get title => throw UnimplementedError();

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}
