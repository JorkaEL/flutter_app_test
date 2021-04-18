import 'package:json_annotation/json_annotation.dart';

part 'picture.dto.g.dart';

@JsonSerializable()
class DtoPicture {
  @JsonKey(name: 'large')
  final String large;

  @JsonKey(name: 'medium')
  final String medium;

  @JsonKey(name: 'thumbnail')
  final String thumbnail;

  DtoPicture({required this.large, required this.medium, required this.thumbnail});

  factory DtoPicture.fromJson(Map<String, dynamic> json) => _$DtoPictureFromJson(json);
  Map<String, dynamic> toJson() => _$DtoPictureToJson(this);
}
