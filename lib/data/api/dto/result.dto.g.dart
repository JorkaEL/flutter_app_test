// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoResult _$DtoResultFromJson(Map<String, dynamic> json) {
  return DtoResult(
    results: (json['results'] as List<dynamic>)
        .map((e) => DtoUser.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DtoResultToJson(DtoResult instance) => <String, dynamic>{
      'results': instance.results,
    };
