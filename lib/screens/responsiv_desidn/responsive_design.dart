import 'package:flutter/material.dart';
class ResponDesign extends StatefulWidget {
  ResponDesign({Key key, this.title}) : super(key: key);

  static const String routeName = "/ResponDesign";

  final String title;

  @override
  _ResponDesignState createState() => new _ResponDesignState();
}

/// // 1. After the page has been created, register it with the app routes
/// routes: <String, WidgetBuilder>{
///   ResponDesign.routeName: (BuildContext context) => new ResponDesign(title: "ResponDesign"),
/// },
///
/// // 2. Then this could be used to navigate to the page.
/// Navigator.pushNamed(context, ResponDesign.routeName);
///

class _ResponDesignState extends State<ResponDesign> {
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