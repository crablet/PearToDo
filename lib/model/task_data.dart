import 'package:json_annotation/json_annotation.dart';
import 'package:pear_todo/model/task_type_detail.dart';

part 'task_data.g.dart';

@JsonSerializable()
class TaskData {
  TaskData(
    this.id,
    this.title,
    this.description,
    this.createdTime,
    this.updatedTime,
    this.finishedTime,
    this.tag,
    this.deleted,
    this.taskType,
    this.taskTypeDetail,
  );

  String id;
  String title;
  String description;
  String createdTime;
  String updatedTime;
  String finishedTime;
  List<String> tag;
  bool deleted;
  int taskType;
  TaskTypeDetail taskTypeDetail;

  factory TaskData.fromJson(Map<String, dynamic> json) =>
      _$TaskDataFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDataToJson(this);
}
