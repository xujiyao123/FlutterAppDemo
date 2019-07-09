
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonExcampelController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("buttons")),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("normal"),
            onPressed: ()=> {

            },
          ),
          OutlineButton(
            child: Text("normal"),
            onPressed: ()=>{},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: ()=>{},
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.red,
            child: Text("submit"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: ()=>{},
          )
        ],
      ),
    );
  }

}