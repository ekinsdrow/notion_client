import 'package:json_annotation/json_annotation.dart';
part 'base_object.g.dart';

@JsonSerializable()
class BaseObject {
  final String id;
  final String object;
  
  BaseObject({
    required this.id,
    required this.object,
  });

  factory BaseObject.fromJson(Map<String, dynamic> json) => _$BaseObjectFromJson(json);
  Map<String, dynamic> toJson() => _$BaseObjectToJson(this);
}
