import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CostomScrollerController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CostomScrollerState();
  }

}

class _CostomScrollerState extends State<CostomScrollerController> {

  ScrollController _scrollController = new ScrollController();
  TextStyle textStyle = TextStyle(color: Colors.white , shadows: [Shadow(color: Colors.black , offset: Offset(2,2) , blurRadius: 4)]);


  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset < 250) {
        setState(() {
          textStyle = TextStyle(color: Colors.white , shadows: [Shadow(color: Colors.black , offset: Offset(2,2) , blurRadius: 4)]);
        });
      } else if (_scrollController.offset > 200) {
        setState(() {
          textStyle = TextStyle(color: Colors.black);
        });
      }
    });

    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("这是一个渐变导航栏", style: textStyle),
              background: Image.asset("lib/Resourse/2.jpg" , fit: BoxFit.cover),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8),
            sliver: SliverGrid(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4
              ),
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context , int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.cyan[100 * (index % 10)],
                      child: Text("grid item $index"),
                    );
                  },
                childCount: 20
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context , int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[100 * (index % 2)],
                    child: ListTile(
                      title: Text("list item $index"),
                      subtitle: Text("list view list item" * 30 ),
                    ),
                  );
                },
              childCount: 50
            ),
          )
        ],
      ),
    );
  }

}