// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoName _$DtoNameFromJson(Map<String, dynamic> json) {
  return DtoName(
    firstName: json['first'] as String,
    title: json['title'] as String,
    lastName: json['last'] as String,
  );
}

Map<String, dynamic> _$DtoNameToJson(DtoName instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.firstName,
      'last': instance.lastName,
    };
