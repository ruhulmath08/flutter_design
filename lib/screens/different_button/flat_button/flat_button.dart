import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class FlatButtonScreen extends StatefulWidget {
  final String title;

  const FlatButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _FlatButtonScreenState createState() => _FlatButtonScreenState();
}

class _FlatButtonScreenState extends State<FlatButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.blueAccent,
              onPressed: () {
                Toast.show(
                  "FlatButton",
                  context,
                  duration: Toast.LENGTH_LONG,
                );
              },
              child: Text(
                "Flat Button",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blue,
              child: FlatButton.icon(
                label: Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    'FlatButton With Icon',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                icon: Icon(
                  Icons.android,
                  color: Colors.white,
                ),
                onPressed: () {
                  Toast.show(
                    "FlatButton With Icon",
                    context,
                    duration: Toast.LENGTH_LONG,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
