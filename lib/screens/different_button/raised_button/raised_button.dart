import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class RaisedButtonScreen extends StatefulWidget {
  final String title;

  const RaisedButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _RaisedButtonScreenState createState() => _RaisedButtonScreenState();
}

class _RaisedButtonScreenState extends State<RaisedButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            RaisedButton(
              color: Colors.blue,
              child: Text(
                "RaisedButton",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                Toast.show("Pressed on RaisedButton", context,
                    duration: Toast.LENGTH_LONG);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ButtonTheme(
              height: 50,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 10,
                child: Text(
                  "RaisedButton With Height",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Toast.show(
                    "Pressed on RaisedButton With Height: 50",
                    context,
                    duration: Toast.LENGTH_LONG,
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

//show SnackBar

}
