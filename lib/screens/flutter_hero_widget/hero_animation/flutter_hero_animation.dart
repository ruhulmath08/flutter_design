import 'package:flutter/material.dart';

class FlutterHeroAnimation extends StatefulWidget {
  FlutterHeroAnimation({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterHeroAnimationState createState() => new _FlutterHeroAnimationState();
}

class _FlutterHeroAnimationState extends State<FlutterHeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(),
    );
  }

}
