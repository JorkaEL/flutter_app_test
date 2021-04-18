// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoLocation _$DtoLocationFromJson(Map<String, dynamic> json) {
  return DtoLocation(
    state: json['state'] as String,
    country: json['country'] as String,
    postcode: json['postcode'],
    city: json['city'] as String,
    street: DtoStreet.fromJson(json['street'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DtoLocationToJson(DtoLocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
      'street': instance.street,
    };
