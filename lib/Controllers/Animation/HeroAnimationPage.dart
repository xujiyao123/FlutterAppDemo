import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(),
      body:     Container(
        alignment: Alignment.center,
        child: InkWell(
          child: Hero(
            tag: "avatar",
            child: ClipOval(
                child: Image.asset("lib/Resourse/1.png" , width: 100,height: 100, fit: BoxFit.cover,)
            ),
          ),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(
                pageBuilder:(BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: Scaffold(
                      appBar: AppBar(title: Text("原图"),),
                      body: HeroAnimationPageB(),
                    ),
                  );
                }
            ));
          },
        ),
      ),
    );




  }

}



class HeroAnimationPageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Hero(
        tag: "avatar",
        child: Image.asset("lib/Resourse/1.png"),
      ),
    );
  }

}
