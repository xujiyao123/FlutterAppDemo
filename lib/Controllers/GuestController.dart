import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PointEventPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PointEventState();
  }

}

class PointEventState extends State<PointEventPage> {

  PointerEvent _event;
  String _operation = "no gesture detcted";
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;

  @override
  void initState() {
    // TODO: implement initState

    _tapGestureRecognizer.onTap = () {
        setState(() {
          _toggle = !_toggle;
        });
    };

    super.initState();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  void updateText(String text) {
    setState(() {
      _operation = text;
    });
  }
  void updateEvent(PointerEvent event) {
    setState(() {
      _event = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("手势及事件")),
      body:Center(
        child:Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Listener(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 300,
                height: 150,
                child: Text(
                    _event?.toString() ?? "",
                    style: TextStyle(color: Colors.white)
                ),
              ),
              onPointerDown: (PointerDownEvent event) {
                updateEvent(event);
              },
              onPointerMove: (PointerMoveEvent event) {
                updateEvent(event);
              },
              onPointerUp: (PointerUpEvent event) {
                updateEvent(event);
              },
            ),
            SizedBox(height: 20) ,
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                width: 200,
                height: 100,
                child: Text(
                  _operation , style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {
                updateText("tap");
              },
              onDoubleTap: () => updateText("doubleTap"),
              onLongPress: () => updateText("longpress"),
            ),
            SizedBox(height: 20,),
            Text("⬇️zhis is a button"),
            FlatButton(
              textColor: Colors.white,
              child:Container(color: Colors.red,child:Text("drag"),height: 30, width: 100,alignment: Alignment.center,),
              onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> DragPage())),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text.rich(TextSpan(
                children: [
                    TextSpan(text: "hello world"),
                    TextSpan(text: "tap me!" ,
                            style: TextStyle(fontSize: 30 , color: _toggle? Colors.redAccent : Colors.blue) ,
                      recognizer:_tapGestureRecognizer
                    ),
                  TextSpan(text: "hello world")
                ]
              )),
            )
          ],
        ),
      )
    );
  }

}



class DragPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DragPageStats();
  }

}
class DragPageStats extends State<DragPage> with SingleTickerProviderStateMixin {

  double _top = 0.0;
  double _left = 0.0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text("A"), backgroundColor: Colors.redAccent,),
              onPanDown: (DragDownDetails s) {

              },
              onPanUpdate: (DragUpdateDetails s) {
                setState(() {
                  _left += s.delta.dx;
                  _top += s.delta.dy;
                });
              },
//              onVerticalDragUpdate:  (DragUpdateDetails s) {
//                setState(() {
//                  _top += s.delta.dy;
//                });
//              },
              onPanEnd:(DragEndDetails s) {
                print(s.velocity);
              },
            ),
          )
        ],
      ),
    );
  }

}





