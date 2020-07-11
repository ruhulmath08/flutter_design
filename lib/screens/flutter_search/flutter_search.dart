import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterSearch extends StatefulWidget {
  FlutterSearch({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterSearchState createState() => new _FlutterSearchState();
}

class _FlutterSearchState extends State<FlutterSearch> {


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
                    'Search In AppBar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SEARCH_IN_APPBAR_VIEW_ROUTE,
                      arguments: "Search In AppBar",
                    );
                  },
                ),
              ),

              SizedBox(height: 10,),

              ButtonTheme(
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,
                  elevation: 5,
                  child: Text(
                    'Voice Search In AppBar',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      VOICE_SEARCH_IN_APPBAR_VIEW_ROUTE,
                      arguments: "Voice Search In AppBar",
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }

  void _onFloatingActionButtonPressed() {}
}

/*
* Link: https://ptyagicodecamp.github.io/implementing-search-action-in-appbar.html
* YouTube: https://www.youtube.com/watch?v=eTHP85yt1iQ&list=PL9hJBK4eqz6OdtyFvESp1sNvZoG44NIil&index=4
* */
