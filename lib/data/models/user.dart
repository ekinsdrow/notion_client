import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  User({
    required this.id,
    required this.avatar,
    required this.name,
  });

  final String id;
  final String name;
  @JsonKey(name: 'avatar_url')
  final String avatar;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
