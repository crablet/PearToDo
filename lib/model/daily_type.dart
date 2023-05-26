import 'package:json_annotation/json_annotation.dart';

part 'daily_type.g.dart';

@JsonSerializable()
class DailyType {
  DailyType(
    this.startTime,
  );

  String startTime;

  factory DailyType.fromJson(Map<String, dynamic> json) =>
      _$DailyTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DailyTypeToJson(this);
}
