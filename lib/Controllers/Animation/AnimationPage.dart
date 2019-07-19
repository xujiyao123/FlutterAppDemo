import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Controllers/Animation/ScaleAnimationPage.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationPageState();
  }

}
class AnimationPageState extends State<AnimationPage> {

  var titles = ["ScaleAnimation" ];
  var pushPage = [ScaleAnimationPage()];

  Widget _listViewBuilder(BuildContext context , int row) {
      return ListTile(title: Text(titles[row]),
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => pushPage[row]))
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