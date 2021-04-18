import 'package:json_annotation/json_annotation.dart';

part 'name.dto.g.dart';

@JsonSerializable()
class DtoName {
  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'first')
  final String firstName;

  @JsonKey(name: 'last')
  final String lastName;

  DtoName({required this.firstName, required this.title, required this.lastName});

  factory DtoName.fromJson(Map<String, dynamic> json) => _$DtoNameFromJson(json);
  Map<String, dynamic> toJson() => _$DtoNameToJson(this);
}
