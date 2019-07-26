import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key , Animation<num> animation})
      : super(key:key , listenable:animation);

  @override
  Widget build(BuildContext context) {

    final Animation<num> animation = listenable;
    Center center = new Center(child:Image.asset("lib/Resourse/1.png" , width: animation.value, height: animation.value,) ,);

    // TODO: implement build
    return center;
  }
}

class GrowTranstion extends StatelessWidget {
  GrowTranstion({this.child , this.animation});
  final Widget child;
  final Animation<num> animation;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context ,Widget child) {
          return Container(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }

}



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

//    controller = new AnimationController(duration: Duration(seconds: 3), vsync: this);
//    animation = new Tween(begin: 0.0 , end: 300.0).animate(controller)..addListener(() {
//      setState(() {
//
//      });
//    });

    controller = new AnimationController(duration: Duration(seconds: 3) , vsync: this);
    animation = new CurvedAnimation(parent: controller , curve:  Curves.bounceIn);
    animation = new Tween(begin: 0.0 , end: 300.0).animate(animation)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
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
//      body: AnimatedImage(animation: animation,)
    body: GrowTranstion(child: Image.asset("lib/Resourse/1.png"), animation: animation,),
    );

  }

}