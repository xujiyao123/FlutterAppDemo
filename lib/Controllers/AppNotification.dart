import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNotification extends Notification {
  AppNotification({this.msg,
                    this.themeData});


  final String msg;
  final ThemeData themeData;
}