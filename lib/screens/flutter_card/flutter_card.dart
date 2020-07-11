import 'package:flutter/material.dart';
import 'package:flutter_design/routing/routing_constants.dart';

class FlutterCard extends StatelessWidget {
  final String name;

  const FlutterCard({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'CardView - With Grid',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    CARD_ONE_VIEW_ROUTE,
                    arguments: "Card View With Grid",
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Card Inside ListView',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    CARD_INSIDE_LIST_VIEW_ROUTE,
                    arguments: 'Card Inside ListView',
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
