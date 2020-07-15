import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  FlutterForm({Key key, this.title}) : super(key: key);

  static const String routeName = "/FlutterForm";

  final String title;

  @override
  _FlutterFormState createState() => new _FlutterFormState();
}

/// // 1. After the page has been created, register it with the app routes
/// routes: <String, WidgetBuilder>{
///   FlutterForm.routeName: (BuildContext context) => new FlutterForm(title: "FlutterForm"),
/// },
///
/// // 2. Then this could be used to navigate to the page.
/// Navigator.pushNamed(context, FlutterForm.routeName);
///

class _FlutterFormState extends State<FlutterForm> {
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