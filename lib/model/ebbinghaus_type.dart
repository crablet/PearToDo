import 'package:json_annotation/json_annotation.dart';

part 'ebbinghaus_type.g.dart';

@JsonSerializable()
class EbbinghausType {
  EbbinghausType(
      this.startTime,
      );

  String startTime;

  factory EbbinghausType.fromJson(Map<String, dynamic> json) =>
      _$EbbinghausTypeFromJson(json);

  Map<String, dynamic> toJson() => _$EbbinghausTypeToJson(this);
}
