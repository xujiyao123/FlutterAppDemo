import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BridgePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BridgeStats();
  }

}
class BridgeStats extends State<BridgePage> {

  static const platform = const MethodChannel('samples.flutter.io/battery');

  String _batteeryLevel = "unknow";
  
  Future<Null> _getBatteryLevel() async {
    String bnatteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      bnatteryLevel = "$result % .";

    } on PlatformException catch (e) {
      bnatteryLevel = "error ${e.message}";
    }

    setState(() {
      _batteeryLevel = bnatteryLevel;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text("get battery level"),
              onPressed: _getBatteryLevel,
            ),
            Text(_batteeryLevel)
          ],
        ),
      ),
    );
  }

}