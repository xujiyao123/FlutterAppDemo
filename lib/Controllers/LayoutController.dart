import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LayoutController();
  }

}

class _LayoutController extends State<LayoutController> {
  @override
  Widget build(BuildContext context) {
    var redView = DecoratedBox(decoration: BoxDecoration(color: Colors.red));
    ///cutsom view
    var button = DecoratedBox(
      decoration: BoxDecoration(
        gradient:LinearGradient(colors:[Colors.red,Colors.orange[700]]), //背景渐变
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(2,2),
            blurRadius: 4
          )
        ]
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80 , vertical: 18),
        child: Text("cutson" ,style: TextStyle(color: Colors.white))
      ),
    );

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            ConstrainedBox(
                constraints:
                BoxConstraints(
                    minWidth:
                    double.infinity,
                    minHeight: 50.0
                ),
                child:
                Container(
                    height: 5.0,
                    child: redView)
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: redView,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: button,
            ),
          Container(
            margin: EdgeInsets.only(top: 50.0, left: 120.0), //容器外补白
            constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
            decoration: BoxDecoration(//背景装饰
                gradient: RadialGradient( //背景径向渐变
                    colors: [Colors.red, Colors.orange],
                    center: Alignment.topLeft,
                    radius: .98
                ),
                boxShadow: [ //卡片阴影
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 4.0
                  )
                ]
            ),
            transform: Matrix4.rotationZ(.2), //卡片倾斜变换
            alignment: Alignment.center, //卡片内文字居中
            child: Text( //卡片文字
              "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          )
          ],
        )
    );
  }
}