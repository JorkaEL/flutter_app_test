// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dob.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DtoDob _$DtoDobFromJson(Map<String, dynamic> json) {
  return DtoDob(
    date: json['date'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$DtoDobToJson(DtoDob instance) => <String, dynamic>{
      'date': instance.date,
      'age': instance.age,
    };
