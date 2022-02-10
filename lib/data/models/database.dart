import 'package:json_annotation/json_annotation.dart';
import 'emoji_icon.dart';
import 'interfaces/base_object.dart';
part 'database.g.dart';

@JsonSerializable()
class Database implements BaseObject {
  Database({
    required this.object,
    required this.id,
    required this.icon,
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

  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);

  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}
