import 'package:flutter/cupertino.dart';

class IosStyleController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("ios style"),
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: Text("press"),
          onPressed: (){

          },
        ),
      ),
    );
  }

}