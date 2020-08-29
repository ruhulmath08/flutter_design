import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';
import 'package:flutter_design/screens/internet_speed/internet_speed.dart';
import 'package:flutter_design/screens/signal_strength_indicator/signal_strength_indicator.dart';

class HomeView extends StatelessWidget {
  final String argument;

  const HomeView({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('$argument'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Collapse Toolbar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    COLLAPSE_TOOLBAR_VIEW_ROUTE,
                    arguments: "Collapse Toolbar",
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
                  'Bottom Navigation Bar',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    BOTTOM_NAVIGATION_VIEW_ROUTE,
                    arguments: "Bottom Navigation Bar",
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
                  'Flutter Card',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_CARD_VIEW_ROUTE,
                    arguments: "Flutter Cards",
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
                  'Custom Dialog in Flutter',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    CUSTOM_DIALOG_VIEW_ROUTE,
                    arguments: "Flutter Custom Dialog",
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
                  'Custom Dropdown Menu',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    CUSTOM_DROP_DOWN_VIEW_ROUTE,
                    arguments: "Custom Dropdown Menu",
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
                  'Flutter List View',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_LIST_VIEW_ROUTE,
                    arguments: "Flutter List View",
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
                  'Flutter Search',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_SEARCH_VIEW_ROUTE,
                    arguments: "Flutter Search",
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
                  'Flutter Permission',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_PERMISSION_VIEW_ROUTE,
                    arguments: "Flutter Permission",
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
                  'Flutter Library',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_LIBRARY_VIEW_ROUTE,
                    arguments: "Flutter Library",
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
                  'Flutter Hero Widget',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_LIBRARY_VIEW_ROUTE,
                    arguments: "Flutter Hero Widget",
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Flutter BLoC Pattern',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    FLUTTER_BLOC_PATTERN,
                    arguments: 'Flutter BLoc Pattern',
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Internet Speed test',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => InternetSpeed(),
                  ));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Signal Strength Indicator',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MySignal(),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
