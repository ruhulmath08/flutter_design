import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterListView extends StatefulWidget {
  FlutterListView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterListViewState createState() => new _FlutterListViewState();
}

class _FlutterListViewState extends State<FlutterListView> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  elevation: 5,
                  child: Text(
                    'Dismissible List View',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      DISMISSIBLE_LIST_VIEW_ROUTE,
                      arguments: "Dismissible ListView",
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  elevation: 5,
                  child: Text(
                    "Expandable ListView",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      EXPANDABLE_LIST_VIEW_ROUTE,
                      arguments: "Expandable ListView",
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
