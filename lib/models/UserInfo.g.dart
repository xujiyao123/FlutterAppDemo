// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo()
    ..user_id = json['user_id'] as num
    ..account = json['account'] as String
    ..password = json['password'] as String
    ..user_name = json['user_name'] as String
    ..sex = json['sex'] as String
    ..status = json['status'] as String
    ..job = json['job'] as String
    ..phone = json['phone'] as String
    ..identity = json['identity'] as String
    ..id = json['id'] as num
    ..organ_id = json['organ_id'] as num
    ..organ_name = json['organ_name'] as String
    ..region_id = json['region_id'] as num
    ..region_name = json['region_name'] as String;
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'user_id': instance.user_id,
      'account': instance.account,
      'password': instance.password,
      'user_name': instance.user_name,
      'sex': instance.sex,
      'status': instance.status,
      'job': instance.job,
      'phone': instance.phone,
      'identity': instance.identity,
      'id': instance.id,
      'organ_id': instance.organ_id,
      'organ_name': instance.organ_name,
      'region_id': instance.region_id,
      'region_name': instance.region_name
    };
