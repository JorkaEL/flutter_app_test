import 'package:flutter_app_test/data/api/dto/dob.dto.dart';
import 'package:flutter_app_test/data/api/dto/location.dto.dart';
import 'package:flutter_app_test/data/api/dto/name.dto.dart';
import 'package:flutter_app_test/data/api/dto/picture.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.dto.g.dart';

@JsonSerializable()
class DtoUser {
  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'name')
  final DtoName name;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'location')
  final DtoLocation location;

  @JsonKey(name: 'phone')
  final String phone;

  @JsonKey(name: 'cell')
  final String cell;

  @JsonKey(name: 'dob')
  final DtoDob dob;

  @JsonKey(name: 'picture')
  final DtoPicture picture;

  @JsonKey(name: 'nat')
  final String nat;

  DtoUser(
      {required this.gender,
      required this.email,
      required this.location,
      required this.name,
      required this.phone,
      required this.cell,
      required this.dob,
      required this.picture,
      required this.nat});

  factory DtoUser.fromJson(Map<String, dynamic> json) => _$DtoUserFromJson(json);
  Map<String, dynamic> toJson() => _$DtoUserToJson(this);
}
