import 'package:json_annotation/json_annotation.dart';

part 'single_type.g.dart';

@JsonSerializable()
class SingleType {
  SingleType(
    this.date,
  );

  String date;

  factory SingleType.fromJson(Map<String, dynamic> json) =>
      _$SingleTypeFromJson(json);

  Map<String, dynamic> toJson() => _$SingleTypeToJson(this);
}
