import 'package:flutter_app_test/data/api/dto/user.dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'result.dto.g.dart';

@JsonSerializable()
class DtoResult {
  @JsonKey(name: 'results')
  final List<DtoUser> results;

  DtoResult({required this.results});

  factory DtoResult.fromJson(Map<String, dynamic> json) => _$DtoResultFromJson(json);
  Map<String, dynamic> toJson() => _$DtoResultToJson(this);
}
