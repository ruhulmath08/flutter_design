import 'package:flutter/material.dart';

class DropdownFromDB extends StatefulWidget {
  final String pageTitle;

  DropdownFromDB({Key key, this.pageTitle}) : super(key: key);

  @override
  _DropdownFromDBState createState() => new _DropdownFromDBState();
}

class _DropdownFromDBState extends State<DropdownFromDB> {

  var countriesList = ['Bangladesh', 'India', 'Pakistan', 'Chain'];
  var dropDownValue = "Bangladesh";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.pageTitle),
      ),
      body: Center(
        child: Text(widget.pageTitle),
      ),
    );
  }
}
