import 'package:json_annotation/json_annotation.dart';

part 'dob.dto.g.dart';

@JsonSerializable()
class DtoDob {
  @JsonKey(name: 'date')
  final String date;

  @JsonKey(name: 'age')
  final int age;

  DtoDob({required this.date, required this.age});

  factory DtoDob.fromJson(Map<String, dynamic> json) => _$DtoDobFromJson(json);
  Map<String, dynamic> toJson() => _$DtoDobToJson(this);
}
