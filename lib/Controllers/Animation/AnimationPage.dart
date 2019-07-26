import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/Animation/FadePageRoute.dart';
import 'package:flutter_app/Controllers/Animation/HeroAnimationPage.dart';
import 'package:flutter_app/Controllers/Animation/ScaleAnimationPage.dart';
import 'package:flutter_app/Controllers/Animation/StaggerAnimationPage.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationPageState();
  }

}
class AnimationPageState extends State<AnimationPage> {

  var titles = ["ScaleAnimation" , "HeroAnimation" , "StaggerDemo"];
  var pushPage = [ScaleAnimationPage() , HeroAnimationPage() , StaggerDemo()];

  Widget _listViewBuilder(BuildContext context , int row) {
      return ListTile(title: Text(titles[row]), onTap: () {
        Navigator.push(context,
            FadePageRoute(builder: (context) => pushPage[row])
          );
      }
//          MaterialPageRoute(builder: (BuildContext context) => pushPage[row]))
      );
  }
  Widget _sepatorBuilder(BuildContext context , int row) {
      return Divider(height: 1, color: Colors.grey,);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("动画"),),
      body: Container(
        child: ListView.separated(
          itemBuilder: _listViewBuilder,
          separatorBuilder: _sepatorBuilder,
          itemCount: titles.length,
        )
      ),
    );
  }

}