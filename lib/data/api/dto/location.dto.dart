import 'package:flutter_app_test/data/api/dto/street.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.dto.g.dart';

@JsonSerializable()
class DtoLocation {
  @JsonKey(name: 'city')
  final String city;

  @JsonKey(name: 'state')
  final String state;

  @JsonKey(name: 'country')
  final String country;

  @JsonKey(name: 'postcode')
  final dynamic postcode;

  @JsonKey(name: 'street')
  final DtoStreet street;

  DtoLocation({required this.state, required this.country, required this.postcode, required this.city, required this.street});

  factory DtoLocation.fromJson(Map<String, dynamic> json) => _$DtoLocationFromJson(json);
  Map<String, dynamic> toJson() => _$DtoLocationToJson(this);
}
