import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class OutlineButtonScreen extends StatefulWidget {
  final String title;

  const OutlineButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _OutlineButtonScreenState createState() => _OutlineButtonScreenState();
}

class _OutlineButtonScreenState extends State<OutlineButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () {
                  Toast.show(
                    "Pressed on OutlineButton",
                    context,
                    duration: Toast.LENGTH_LONG,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              OutlineButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Text(
                  "OutlineButton Rounded Corner",
                ),
                onPressed: () {
                  Toast.show(
                    "Pressed on OutlineButton",
                    context,
                    duration: Toast.LENGTH_LONG,
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              OutlineButton(
                shape: StadiumBorder(),
                child: Text("OutlineButton With Border Color"),
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () {
                  Toast.show(
                    "OutlineButton With Border Color",
                    context,
                    duration: Toast.LENGTH_LONG,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
