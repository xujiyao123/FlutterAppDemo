import 'package:flutter/material.dart';

class FadePageRoute extends PageRoute {

  FadePageRoute({@required this.builder ,
  this.transitionDuration = const Duration(milliseconds: 300),
  this.opaque = true ,
  this.barrierDismissible = false ,
  this.barrierColor,
  this.barrierLabel,
  this.maintainState = true});

  final WidgetBuilder builder;

  @override
  // TODO: implement barrierColor
  Color  barrierColor ;

  @override
  // TODO: implement barrierLabel
  String  barrierLabel;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransitions

    if (isActive) {
      return FadeTransition(
        opacity: animation,
        child: builder(context),
      );
    } else {
      return Padding(padding: EdgeInsets.zero,);
    }



  }
  @override
  // TODO: implement barrierDismissible
  bool  barrierDismissible ;

  @override
  // TODO: implement maintainState
  bool  maintainState ;

  @override
  // TODO: implement transitionDuration
  Duration  transitionDuration ;

  @override
  // TODO: implement opaque
  bool  opaque;

}