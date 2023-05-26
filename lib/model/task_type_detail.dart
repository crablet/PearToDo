import 'package:json_annotation/json_annotation.dart';
import 'package:pear_todo/model/single_type.dart';
import 'package:pear_todo/model/daily_type.dart';

part 'task_type_detail.g.dart';

@JsonSerializable()
class TaskTypeDetail {
  TaskTypeDetail(
    this.singleType,
    this.dailyType,
  );

  SingleType singleType;
  DailyType dailyType;

  factory TaskTypeDetail.fromJson(Map<String, dynamic> json) =>
      _$TaskTypeDetailFromJson(json);

  Map<String, dynamic> toJson() => _$TaskTypeDetailToJson(this);
}
