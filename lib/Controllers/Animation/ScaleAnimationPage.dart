import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaleAnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScaleAnimationPageState();
  }

}
class ScaleAnimationPageState extends State<ScaleAnimationPage> with SingleTickerProviderStateMixin {

  Animation<num> animation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = new AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = new Tween(begin: 0.0 , end: 300.0).animate(controller)..addListener(() {
      setState(() {

      });
    });
//    controller.addListener((){
//      setState(() {
//
//      });
//    });
      controller.forward();

  }
  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Image.asset("lib/Resourse/1.png" , width: animation.value, height: animation.value,),

      ),
    );
  }

}