import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterHeroWidget extends StatefulWidget {
  FlutterHeroWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterHeroWidgetState createState() => new _FlutterHeroWidgetState();
}

class _FlutterHeroWidgetState extends State<FlutterHeroWidget> {
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
                elevation: 5,
                child: Text(
                  'Flutter Hero Animation',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_HERO_ANIMATION_VIEW_ROUTE,
                    arguments: "Flutter Hero Animation",
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}
