import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterCarousels extends StatefulWidget {
  FlutterCarousels({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterCarouselsState createState() => new _FlutterCarouselsState();
}

class _FlutterCarouselsState extends State<FlutterCarousels> {
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
                  child: Text(
                    'Basic Carousels Demo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      BASIC_CAROUSELS_VIEW_ROUTE,
                      arguments: 'Basic Carousels',
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
