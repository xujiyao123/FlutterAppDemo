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

  TabController _tabController;

  List tabs = ["功能" ,"动态","资讯"];

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
    _tabController = TabController(length: tabs.length ,vsync: this );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
            IconButton(icon: Icon(Icons.settings),onPressed: ()=>{
              Navigator.pushNamed(context, "setting_page")
            },)
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs.map((e) {
            return Tab(text: e);
          }).toList()
        ) ,
      ),
      drawer: MyDrawer(),
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









class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        // DrawerHeader consumes top MediaQuery padding.
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ClipOval(
                      child: Image.asset(
                        "lib/Resourse/1.png",
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "Sunnytu",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20 , top: 20),
                child:  ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.add),
                      title: const Text('Add account'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Manage accounts'),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}