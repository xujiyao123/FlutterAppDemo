// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UserRiver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRiver _$UserRiverFromJson(Map<String, dynamic> json) {
  return UserRiver()
    ..riverwayId = json['riverwayId'] as num
    ..riverwayName = json['riverwayName'] as String
    ..riverlakeId = json['riverlakeId'] as num
    ..regionId = json['regionId'] as num
    ..organId = json['organId'] as String
    ..beginSection = json['beginSection'] as String
    ..beginLong = json['beginLong'] as num
    ..beginLat = json['beginLat'] as num
    ..endSection = json['endSection'] as String
    ..endLong = json['endLong'] as num
    ..endLat = json['endLat'] as num
    ..length = json['length'] as num
    ..commont = json['commont'] as String
    ..location = json['location'] as String
    ..centerSection = json['centerSection'] as String
    ..centerLong = json['centerLong'] as String
    ..centerLat = json['centerLat'] as String
    ..acreage = json['acreage'] as String
    ..riverwayType = json['riverwayType'] as String
    ..iparent_id = json['iparent_id'] as String
    ..manageBegin = json['manageBegin'] as String
    ..manageEnd = json['manageEnd'] as String
    ..magtarget = json['magtarget'] as String
    ..levels = json['levels'] as String
    ..locationDes = json['locationDes'] as String
    ..storageCapacity = json['storageCapacity'] as String
    ..wqg = json['wqg'] as String;
}

Map<String, dynamic> _$UserRiverToJson(UserRiver instance) => <String, dynamic>{
      'riverwayId': instance.riverwayId,
      'riverwayName': instance.riverwayName,
      'riverlakeId': instance.riverlakeId,
      'regionId': instance.regionId,
      'organId': instance.organId,
      'beginSection': instance.beginSection,
      'beginLong': instance.beginLong,
      'beginLat': instance.beginLat,
      'endSection': instance.endSection,
      'endLong': instance.endLong,
      'endLat': instance.endLat,
      'length': instance.length,
      'commont': instance.commont,
      'location': instance.location,
      'centerSection': instance.centerSection,
      'centerLong': instance.centerLong,
      'centerLat': instance.centerLat,
      'acreage': instance.acreage,
      'riverwayType': instance.riverwayType,
      'iparent_id': instance.iparent_id,
      'manageBegin': instance.manageBegin,
      'manageEnd': instance.manageEnd,
      'magtarget': instance.magtarget,
      'levels': instance.levels,
      'locationDes': instance.locationDes,
      'storageCapacity': instance.storageCapacity,
      'wqg': instance.wqg
    };
