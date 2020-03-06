import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final double opacity;
  final Color color;
  final Widget child;
  final Widget progressIndicator;
  final Offset offset;
  final bool dismissable;
  final bool inAsyncCall;

  LoadingScreen({
    Key key,
    @required this.inAsyncCall,
    this.opacity = 0.6,
    this.color = Colors.white,
    this.progressIndicator = const CircularProgressIndicator(),
    this.offset,
    this.dismissable = false,
    @required this.child,
  })  : assert(child != null),
        assert(inAsyncCall != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];

    widgetList.add(child);

    if (inAsyncCall) {
      Widget layOutProgressIndicator;
      if (offset == null) {
        layOutProgressIndicator = Center(
          child: Container(
            height: 60,
            width: 60,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                child: CircularProgressIndicator(),
                height: 30,
                width: 30,
              ),
            ),
          ),
        );
      } else {
        layOutProgressIndicator = Positioned(
          child: progressIndicator,
          left: offset.dx,
          top: offset.dy,
        );
      }

      final modal = [
        new Opacity(
          opacity: opacity,
          child: new ModalBarrier(
            dismissible: dismissable,
            color: color,
          ),
        ),
        layOutProgressIndicator
      ];

      widgetList += modal;
    }
    return new Stack(
      children: widgetList,
    );
  }
}
