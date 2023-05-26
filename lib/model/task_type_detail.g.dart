// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_type_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskTypeDetail _$TaskTypeDetailFromJson(Map<String, dynamic> json) =>
    TaskTypeDetail(
      SingleType.fromJson(json['singleType'] as Map<String, dynamic>),
      DailyType.fromJson(json['dailyType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskTypeDetailToJson(TaskTypeDetail instance) =>
    <String, dynamic>{
      'singleType': instance.singleType,
      'dailyType': instance.dailyType,
    };
