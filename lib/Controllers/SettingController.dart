
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/AppManager.dart';
import 'package:flutter_app/Controllers/AppNotification.dart';



class SettingController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingControolrState();
  }
}

class SettingControolrState extends State<SettingController> {



  Widget _ListViewBuilder(BuildContext context , int row) {
    return
      ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: 44,
            minWidth: double.infinity,
            maxHeight: double.infinity
        ),
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 0 , top: 0),
            child: ListTile(
              title: Text("rhis is a list title"),
              subtitle: Text("row = $row"),
              onTap: () {
                print(row);
                if (row == 0) {
                  App.emit("themeChange" , new ThemeData(primarySwatch: Colors.red));
                }else if (row == 1) {
                  AppNotification(themeData: new ThemeData(primarySwatch: Colors.blue)).dispatch(context);
                }
              },
            )
        ),
      );


  }

  Widget _ListViewSeparatedBuilder(BuildContext context , int row) {
    return Divider(
      height: 1,
      color: Colors.grey,
    );
  }

  ListView getSection(int section) {
    if (section == 0) {
      return ListView.separated(
          itemBuilder: _ListViewBuilder,
          itemCount: 10,
          separatorBuilder: _ListViewSeparatedBuilder
      );
    }
  }
  
  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(title: Text("select Theme")),
            Expanded(
              child: getSection(0),
            )
          ],
        )
      ),
    );
  }


}