import 'package:flutter/material.dart';

class BlocPattern extends StatefulWidget {
  BlocPattern({Key key, this.title}) : super(key: key);

  static const String routeName = "/BlocPattern";

  final String title;

  @override
  _BlocPatternState createState() => new _BlocPatternState();
}

/// // 1. After the page has been created, register it with the app routes
/// routes: <String, WidgetBuilder>{
///   BlocPattern.routeName: (BuildContext context) => new BlocPattern(title: "BlocPattern"),
/// },
///
/// // 2. Then this could be used to navigate to the page.
/// Navigator.pushNamed(context, BlocPattern.routeName);
///

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
