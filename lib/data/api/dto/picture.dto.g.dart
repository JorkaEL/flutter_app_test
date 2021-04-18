// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoPicture _$DtoPictureFromJson(Map<String, dynamic> json) {
  return DtoPicture(
    large: json['large'] as String,
    medium: json['medium'] as String,
    thumbnail: json['thumbnail'] as String,
  );
}

Map<String, dynamic> _$DtoPictureToJson(DtoPicture instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
