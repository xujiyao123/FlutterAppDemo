import 'package:json_annotation/json_annotation.dart';
import "UserRiver.dart";
import "UserInfo.dart";
part 'User.g.dart';

@JsonSerializable()
class User {
    User();

    num code;
    String msg;
    num count;
    Map<String,dynamic> query;
    List<UserRiver> data;
    String stat;
    List<UserInfo> other;
    
    factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
    Map<String, dynamic> toJson() => _$UserToJson(this);
}
