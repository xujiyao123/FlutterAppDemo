
import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/Animation/AnimationPage.dart';
import 'package:flutter_app/Controllers/AppManager.dart';
import 'package:flutter_app/Controllers/AppNotification.dart';
import 'package:flutter_app/Controllers/ButtonExcampleController.dart';
import 'package:flutter_app/Controllers/CostomScrollerController.dart';
import 'package:flutter_app/Controllers/GuestController.dart';
import 'package:flutter_app/Controllers/HomePageController.dart';
import 'package:flutter_app/Controllers/ImageController.dart';
import 'package:flutter_app/Controllers/IosStyleController.dart';
import 'package:flutter_app/Controllers/LayoutController.dart';
import 'package:flutter_app/Controllers/ListViewController.dart';
import 'package:flutter_app/Controllers/NteWork/NetWorkPage.dart';
import 'package:flutter_app/Controllers/SettingController.dart';
import 'package:flutter_app/Controllers/SwitchExcampleController.dart';
import 'package:flutter_app/Controllers/TextExcampleController.dart';
import 'package:flutter_app/Controllers/listview_demo.dart';

class AppDelegate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppDelegateState();
  }
}

class AppDelegateState extends State<AppDelegate> {
  // This widget is the root of your application.
  ThemeData _data = new ThemeData(primarySwatch: Colors.yellow);


  @override
  void initState() {
    // TODO: implement initState
    App.on("themeChange", (data) {
      setState(() {
        _data = data;
      });
    });

    super.initState();
  }



  @override
  Widget build(BuildContext context) {


    return NotificationListener<AppNotification>(
      onNotification: (notification) {
        setState(() {
            _data = notification.themeData;
        });
      },
      child:MaterialApp(title: 'Flutter Demo',
        theme: _data,
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
          "customScroller_page" : (context) => CostomScrollerController(),
          "point_page" : (context) => PointEventPage(),
          "animation_page" : (context) => AnimationPage(),
          "net_page" : (context) => NetWorkPage()
        },
      ) ,
    );
  }
}
