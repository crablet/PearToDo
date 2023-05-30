// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccount _$UserAccountFromJson(Map<String, dynamic> json) => UserAccount(
      isSelected: json['isSelected'] as bool,
      type: const _UserAccountTypeConverter().fromJson(json['type'] as String),
      userName: json['userName'] as String,
      password: json['password'] as String,
      webDavServerAddress: json['webDavServerAddress'] as String?,
    );

Map<String, dynamic> _$UserAccountToJson(UserAccount instance) =>
    <String, dynamic>{
      'isSelected': instance.isSelected,
      'type': const _UserAccountTypeConverter().toJson(instance.type),
      'userName': instance.userName,
      'password': instance.password,
      'webDavServerAddress': instance.webDavServerAddress,
    };
