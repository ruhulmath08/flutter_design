import 'package:flutter/material.dart';

class ImageSliderDemo extends StatefulWidget {
  ImageSliderDemo({Key key, this.title}) : super(key: key);

  static const String routeName = "/ImageSliderDemo";

  final String title;

  @override
  _ImageSliderDemoState createState() => new _ImageSliderDemoState();
}


class _ImageSliderDemoState extends State<ImageSliderDemo> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed() {
  }
}