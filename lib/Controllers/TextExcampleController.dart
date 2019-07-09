import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class TextExampleController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本及样式" , textAlign: TextAlign.center),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("hello word " * 34 , textAlign: TextAlign.center ),
            Text("hello word adwjoidjawiodjiowajoid" *4 , maxLines: 1, overflow: TextOverflow.ellipsis),
            Text("hello word" , textScaleFactor: 1.5),
            Text("Hello world",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                    height: 1.2,
                    fontFamily: "Courier",
                    background: new Paint()..color=Colors.yellow,
                    decoration:TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed
                ),
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: "Home:",
                  style: TextStyle(
                    fontSize: 30
                  )
                ),
                TextSpan(
                  text: "www.baidu.com",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30
                  ),
                )
              ]
            )),
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("hello world"),
                  Text("I am Jack"),
                  Text("I am Jack",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
        Padding(
          //上下左右各添加16像素补白
          padding: EdgeInsets.all(16.0),
          child: Column(
            //显式指定对齐方式为左对齐，排除对齐干扰
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                //左边添加8像素补白
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Hello world"),
              ),
              Padding(
                //上下各添加8像素补白
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text("I am Jack"),
              ),
              Padding(
                // 分别指定四个方向的补白
                padding: const EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),
                child: Text("Your friend"),
              )
            ],
          ),
        )
          ],
        )
      )
    );
  }

}