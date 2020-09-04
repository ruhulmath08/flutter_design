import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget {
  final String title;

  const ToggleButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(
        child: Text("${widget.title}"),
      ),
    );
  }
}
