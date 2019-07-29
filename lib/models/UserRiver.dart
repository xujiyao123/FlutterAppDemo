import 'package:json_annotation/json_annotation.dart';

part 'UserRiver.g.dart';

@JsonSerializable()
class UserRiver {
    UserRiver();

    num riverwayId;
    String riverwayName;
    num riverlakeId;
    num regionId;
    String organId;
    String beginSection;
    num beginLong;
    num beginLat;
    String endSection;
    num endLong;
    num endLat;
    num length;
    String commont;
    String location;
    String centerSection;
    String centerLong;
    String centerLat;
    String acreage;
    String riverwayType;
    String iparent_id;
    String manageBegin;
    String manageEnd;
    String magtarget;
    String levels;
    String locationDes;
    String storageCapacity;
    String wqg;
    
    factory UserRiver.fromJson(Map<String,dynamic> json) => _$UserRiverFromJson(json);
    Map<String, dynamic> toJson() => _$UserRiverToJson(this);
}
