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

  var titles = ["Image demo" , "ios Style" , "text demo" , "button demo" , "input demo" , "layout demo" , "111"];
  var subTitles = ["a Image demo NetworlImage" , "ios Style button " , "text demo and rich color" , "button demo and coutom button" , "input demo and switch and label" , "layout demo and custon view" , "1"];
  var tapNames = ["new_page" ,"ios_page" , "text_page" , "button_page" , "switch_page" , "layout_page" , "setting_page"];

  var icons = [
      Icons.ac_unit,
      Icons.airport_shuttle,
      Icons.all_inclusive,
      Icons.beach_access,
      Icons.cake,
      Icons.favorite,
      Icons.accessibility_new
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
