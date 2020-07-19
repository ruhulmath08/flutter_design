import 'package:flutter/material.dart';

class BlocPattern extends StatefulWidget {
  BlocPattern({Key key, this.title}) : super(key: key);

  static const String routeName = "/BlocPattern";

  final String title;

  @override
  _BlocPatternState createState() => new _BlocPatternState();
}

class _BlocPatternState extends State<BlocPattern> {
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

  void _onFloatingActionButtonPressed() {}
}
