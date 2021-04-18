// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoStreet _$DtoStreetFromJson(Map<String, dynamic> json) {
  return DtoStreet(
    name: json['name'] as String,
    number: json['number'] as int,
  );
}

Map<String, dynamic> _$DtoStreetToJson(DtoStreet instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };
