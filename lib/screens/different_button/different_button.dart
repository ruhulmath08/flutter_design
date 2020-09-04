import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class DifferentButtonScreen extends StatefulWidget {
  final String title;

  const DifferentButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _DifferentButtonScreenState createState() => _DifferentButtonScreenState();
}

class _DifferentButtonScreenState extends State<DifferentButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: ListView(
        padding: EdgeInsets.all(
          10,
        ),
        children: [
          ButtonTheme(
            height: 50.0,
            child: RaisedButton(
              color: Colors.blue,
              elevation: 5,
              child: Text(
                'Raised Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RAISED_BUTTON_ROUTE,
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
                'Radio Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RADIO_BUTTON_ROUTE,
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
                'Toggle Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  TOGGLE_BUTTON_ROUTE,
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
                'Switch Button',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SWITCH_BUTTON_ROUTE,
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
