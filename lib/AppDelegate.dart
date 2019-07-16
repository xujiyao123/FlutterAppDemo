
import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/ButtonExcampleController.dart';
import 'package:flutter_app/Controllers/CostomScrollerController.dart';
import 'package:flutter_app/Controllers/HomePageController.dart';
import 'package:flutter_app/Controllers/ImageController.dart';
import 'package:flutter_app/Controllers/IosStyleController.dart';
import 'package:flutter_app/Controllers/LayoutController.dart';
import 'package:flutter_app/Controllers/ListViewController.dart';
import 'package:flutter_app/Controllers/SettingController.dart';
import 'package:flutter_app/Controllers/SwitchExcampleController.dart';
import 'package:flutter_app/Controllers/TextExcampleController.dart';
import 'package:flutter_app/Controllers/listview_demo.dart';

class AppDelegate extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.yellow,),
      home: HomePageController(title: 'Bonjour Flutter !') ,
      routes: {
        "new_page" : (context) => ImageController(),
        "ios_page" : (context) => IosStyleController(),
        "text_page" : (context) => TextExampleController(),
        "button_page": (context) => ButtonExcampelController(),
        "switch_page": (context)=>  SwitchController(),
        "layout_page":(context)=> LayoutController(),
        "list_page" :(context)=> ListViewController(),
        "list_demo" : (context)=> ListViewDemo() ,
        "setting_page" : (context) => SettingController(),
        "customScroller_page" : (context) => CostomScrollerController()
      },
    );
  }
}