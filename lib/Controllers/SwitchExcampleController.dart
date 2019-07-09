import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchController extends StatefulWidget {
  @override
  _SwitchControllerStats createState() => new _SwitchControllerStats();

}

class _SwitchControllerStats extends State<SwitchController> {
  bool _switchSelected=true; //维护单选开关状态
  bool _checkboxSelected=true;//维护复选框状态
  TextEditingController _editingController = new TextEditingController();

  FocusNode node1 = new FocusNode();
  FocusNode node2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {

    _editingController.text = "hello world";
    _editingController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _editingController.text.length
    );
    _editingController.addListener((){
      print(_editingController.text);
    });
    node2.addListener((){
      print(node2.hasFocus);
    });
  }

  
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

      ),
      body: new Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: CupertinoTextField(
              autofocus: true,
              controller: _editingController,
              focusNode: node1,
//            decoration: InputDecoration(
//                labelText: "userName",
//                hintText: "userNameoraddress",
//                prefixIcon: Icon(Icons.person),
//            ),
              onChanged: (v) {
                print("on change: $v");
              },
            ),
          ),

          TextField(
            focusNode: node2,

            decoration: InputDecoration(
                labelText: "pass",
                hintText: "password",
                prefixIcon: Icon(Icons.lock),
              border: InputBorder.none
            ),
            obscureText: true,
          ),
          CupertinoSwitch(value: _switchSelected, onChanged:(value){
              setState(() {
                _switchSelected=value;
              });
            },
          ),
        Checkbox(value: _checkboxSelected, activeColor: Colors.red, onChanged:(value){
            setState(() {
              _checkboxSelected=value;
            });
          } ,
        ),
          Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            alignment: WrapAlignment.center, //沿主轴方向居中
            children: <Widget>[
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                label: new Text('Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                label: new Text('Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                label: new Text('Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('Laurens'),
              ),
            ],
          )

        ],
      )
    );




  }
}