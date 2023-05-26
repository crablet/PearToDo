// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskData _$TaskDataFromJson(Map<String, dynamic> json) => TaskData(
      json['id'] as String,
      json['title'] as String,
      json['description'] as String,
      json['createdTime'] as String,
      json['updatedTime'] as String,
      json['finishedTime'] as String,
      (json['tag'] as List<dynamic>).map((e) => e as String).toList(),
      json['deleted'] as bool,
      json['taskType'] as int,
      TaskTypeDetail.fromJson(json['taskTypeDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskDataToJson(TaskData instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'createdTime': instance.createdTime,
      'updatedTime': instance.updatedTime,
      'finishedTime': instance.finishedTime,
      'tag': instance.tag,
      'deleted': instance.deleted,
      'taskType': instance.taskType,
      'taskTypeDetail': instance.taskTypeDetail,
    };
