import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterDropDown extends StatefulWidget {
  final String pageTitle;

  const FlutterDropDown({Key key, this.pageTitle}) : super(key: key);

  @override
  _FlutterDropDownState createState() => _FlutterDropDownState();
}

class _FlutterDropDownState extends State<FlutterDropDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.pageTitle}")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            children: [
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    DEFAULT_DROPDOWN_VIEW_ROUTE,
                  );
                },
                child: Text("Flutter Default Dropdown", style: TextStyle(color: Colors.white),),
              ),
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    DROPDOWN_FROM_DB_VIEW_ROUTE,
                  );
                },
                child: Text("Flutter Dropdown From DB", style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
