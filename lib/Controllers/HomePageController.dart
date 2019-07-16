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









class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageStat();
  }

}
class _HomePageStat extends State<HomePage> {

  var titles = ["Image demo" , "ios Style" , "text demo" , "button demo" , "input demo" , "layout demo" , "111"];
  var subTitles = ["a Image demo NetworlImage" , "ios Style button " , "text demo and rich color" , "button demo and coutom button" , "input demo and switch and label" , "layout demo and custon view" , "1"];
  var tapNames = ["new_page" ,"ios_page" , "text_page" , "button_page" , "switch_page" , "layout_page" , "setting_page"];
  // TODO: implement build

  Widget _listViewBuilder(BuildContext context , int row) {
    if (row == 0) {
      return Image.network("https://resources.ninghao.org/images/free_hugs.jpg" , height: 200, fit: BoxFit.cover,);
      return Image.asset("lib/Resourse/1.png" , height: 200, fit: BoxFit.cover,);
    }
    return Container(
      child:  ListTile(
          title: Text(titles[row -1]),
          subtitle: Text(subTitles[row - 1]),
          onTap: ()=> Navigator.pushNamed(context, tapNames[row -1])
      ),
    );
  }

  Widget _listViewSepBulider(BuildContext context , int row) {
    return Divider(color: Colors.grey, height: 1);

  }

  


  @override
  Widget build(BuildContext context) {


    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.all(0),
        separatorBuilder: _listViewSepBulider,
        itemBuilder: _listViewBuilder,
        itemCount: titles.length + 1,
      primary: true,
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