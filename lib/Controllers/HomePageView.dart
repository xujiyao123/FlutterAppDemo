import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageViewState();
  }

}

class HomePageViewState extends State<HomePageView> {

  var titles = ["图像处理" ,
    "苹果风格" ,
    "文字处理" ,
    "按钮样式" ,
    "输入选择" ,
    "布局样式" ,
    "自定义" ,
    "手势事件" ,
  "动画" ,
  "网络" ,
  "原生交互"];
  var tapNames = ["new_page" ,
    "ios_page" ,
    "text_page" ,
    "button_page" ,
    "switch_page" ,
    "layout_page" ,
    "customScroller_page",
    "point_page",
  "animation_page" ,
  "net_page" ,
  "bridge_page"];

  var icons = [
      Icons.image,
      Icons.apps,
      Icons.text_fields,
      Icons.radio_button_checked,
      Icons.input,
      Icons.layers,
      Icons.accessibility_new,
      Icons.thumbs_up_down,
      Icons.sentiment_very_dissatisfied,
      Icons.network_wifi,
      Icons.bug_report
  ];


  SliverGridDelegateWithFixedCrossAxisCount _getDeletgate() {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      childAspectRatio: 1
    );
  }

  SliverGridDelegateWithMaxCrossAxisExtent _getExtentDelegate() {
    return SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 120,
      childAspectRatio: 1
    );
  }

  Widget _collectionViewBuilder(BuildContext context , int item) {
    return Container(

      child: FlatButton(
        onPressed: ()=> Navigator.pushNamed(context, tapNames[item]),
        child:Column(
          children: <Widget>[
            SizedBox(height: 30),
            Icon(icons[item] , color: Colors.red,),
            SizedBox(height: 20),
            Text(titles[item ] , textAlign: TextAlign.center , style: TextStyle(
                fontSize: 15
            ),)
          ],
        ),
      )
    );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:
          ListView(
            children: <Widget>[
              Image.network("https://resources.ninghao.org/images/free_hugs.jpg" , height: 200, fit: BoxFit.cover,),

//      Image.asset("lib/Resourse/1.png" , height: 200, fit: BoxFit.cover,),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: _getDeletgate(),
                itemCount: titles.length ,
                itemBuilder: _collectionViewBuilder,
              ),
            ],
          )
    );
  }

}
