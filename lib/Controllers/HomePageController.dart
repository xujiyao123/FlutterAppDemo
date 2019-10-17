import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/HomePageView.dart';
import 'package:flutter_app/Controllers/ListViewController.dart';
import 'package:flutter_app/Controllers/listview_demo.dart';

class HomePageController extends StatefulWidget {
  HomePageController({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageControllerState createState() {
    return _HomePageControllerState();
  }
}

class _HomePageControllerState extends State<HomePageController> with SingleTickerProviderStateMixin {





  int _selectIndex = 0;
  void _tabbarAction(int index) {
    if (mounted) {
      setState(() {
        _selectIndex = index;
      });
    }


  }
  Widget selectController() {
    if (_selectIndex == 0) {
      return HomePageView();
    }else if (_selectIndex == 1) {
      return ListViewDemo();
    }else if (_selectIndex == 2) {
      return ListViewController();
    }
  }
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home) , title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.bug_report) , title: Text("item")),
          BottomNavigationBarItem(icon: Icon(Icons.not_interested) , title: Text("item"))
        ],
        currentIndex: _selectIndex,
        fixedColor: Colors.red,
        onTap:_tabbarAction,
        type: BottomNavigationBarType.fixed,
      ),
      body: selectController()
    );
  }
}









