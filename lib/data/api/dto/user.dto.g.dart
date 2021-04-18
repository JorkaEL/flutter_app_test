// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoUser _$DtoUserFromJson(Map<String, dynamic> json) {
  return DtoUser(
    gender: json['gender'] as String,
    email: json['email'] as String,
    location: DtoLocation.fromJson(json['location'] as Map<String, dynamic>),
    name: DtoName.fromJson(json['name'] as Map<String, dynamic>),
    phone: json['phone'] as String,
    cell: json['cell'] as String,
    dob: DtoDob.fromJson(json['dob'] as Map<String, dynamic>),
    picture: DtoPicture.fromJson(json['picture'] as Map<String, dynamic>),
    nat: json['nat'] as String,
  );
}

Map<String, dynamic> _$DtoUserToJson(DtoUser instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'location': instance.location,
      'phone': instance.phone,
      'cell': instance.cell,
      'dob': instance.dob,
      'picture': instance.picture,
      'nat': instance.nat,
    };
