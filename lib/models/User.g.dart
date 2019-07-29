// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..code = json['code'] as num
    ..msg = json['msg'] as String
    ..count = json['count'] as num
    ..query = json['query'] as Map<String, dynamic>
    ..data = json['data'] as List
    ..stat = json['stat'] as String
    ..other = json['other'] as List;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'count': instance.count,
      'query': instance.query,
      'data': instance.data,
      'stat': instance.stat,
      'other': instance.other
    };
