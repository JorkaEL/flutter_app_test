import 'package:json_annotation/json_annotation.dart';

part 'street.dto.g.dart';

@JsonSerializable()
class DtoStreet {
  @JsonKey(name: 'number')
  final int number;

  @JsonKey(name: 'name')
  final String name;

  DtoStreet({required this.name, required this.number});

  factory DtoStreet.fromJson(Map<String, dynamic> json) => _$DtoStreetFromJson(json);
  Map<String, dynamic> toJson() => _$DtoStreetToJson(this);
}
