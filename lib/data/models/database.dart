import 'package:json_annotation/json_annotation.dart';
import 'package:notion_client/data/models/base_object.dart';
part 'database.g.dart';

@JsonSerializable()
class Database extends BaseObject {
  Database({
    required String id,
    required String object,
  }) : super(
          id: id,
          object: object,
        );

  factory Database.fromJson(Map<String, dynamic> json) => _$DatabaseFromJson(json);
  Map<String, dynamic> toJson() => _$DatabaseToJson(this);
}
