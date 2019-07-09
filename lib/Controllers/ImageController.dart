import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("xin yemian"),
      ),
      body: ListView(
        children: <Widget>[
          Text(args.toString()),
          Image.asset("lib/Resourse/1.png"),
          Image(
            image: AssetImage("lib/Resourse/1.png"),
            width: 100,
            color: Colors.blue,
            colorBlendMode: BlendMode.difference,
          ),
          Image(
            image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",),
            width: 100,
          ),
          Image.network("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4")
        ],
      )
    );
  }

}