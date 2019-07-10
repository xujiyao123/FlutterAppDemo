import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  List tabs = ["徐" ,"继","垚"];

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
      return HomePage();
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
        fixedColor: Colors.blue,
        onTap:_tabbarAction,
        type: BottomNavigationBarType.fixed,
      ),
      body: selectController()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageStat();
  }

}
class _HomePageStat extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Image.asset("lib/Resourse/1.png"),
          FlatButton(
            textTheme: ButtonTextTheme.primary,
            child: Text("opne mew rote" , style: TextStyle(
            ),),
          ),
          FlatButton(
            child: Text("open new route"),
            textColor: Colors.red,
            onPressed: () {
//                Navigator.push(context, new MaterialPageRoute(builder: (context) {
//                  return NewRoute();
//                }));
              Navigator.pushNamed(context, "new_page" ,arguments: "111");
            },
          ),
          CupertinoButton(
            child: Text("iosStyle"),
            color: Colors.red,
            onPressed: () {
              Navigator.pushNamed(context, "ios_page");
            },
          ),
          FlatButton(
            child: Text("text demo"),
            textColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, "text_page");
            },
          ),
          FlatButton(
            child: Text("button demo"),
            textColor: Colors.lime,
            onPressed: () {
              Navigator.pushNamed(context,"button_page");
            },
          ),
          FlatButton(
            child: Text("switch demo"),
            textColor: Colors.lime,
            onPressed: () {
              Navigator.pushNamed(context,"switch_page");
            },
          ),
          FlatButton(
            child: Text("layout demo"),
            textColor: Colors.lime,
            onPressed: () {
              Navigator.pushNamed(context,"layout_page");
            },
          )


        ]
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
                    "徐继垚",
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