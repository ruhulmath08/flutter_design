import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterLibrary extends StatefulWidget {
  FlutterLibrary({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterLibraryState createState() => new _FlutterLibraryState();
}

class _FlutterLibraryState extends State<FlutterLibrary> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Introduction Screen',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      INTRODUCTION_SCREEN_VIEW_ROUTE,
                      arguments: 'Introduction Screen',
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Flutter Carousels',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      FLUTTER_CAROUSELS_VIEW_ROUTE,
                      arguments: 'Flutter Carousels',
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
