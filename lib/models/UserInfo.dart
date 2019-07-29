import 'package:json_annotation/json_annotation.dart';

part 'UserInfo.g.dart';

@JsonSerializable()
class UserInfo {
    UserInfo();

    num user_id;
    String account;
    String password;
    String user_name;
    String sex;
    String status;
    String job;
    String phone;
    String identity;
    num id;
    num organ_id;
    String organ_name;
    num region_id;
    String region_name;
    
    factory UserInfo.fromJson(Map<String,dynamic> json) => _$UserInfoFromJson(json);
    Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
