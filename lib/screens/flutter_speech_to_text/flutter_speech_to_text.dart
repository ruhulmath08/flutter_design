import 'package:flutter/material.dart';

class FlutterSpeechToText extends StatefulWidget {
  final String tittle;

  const FlutterSpeechToText({Key key, this.tittle}) : super(key: key);

  @override
  _FlutterSpeechToTextState createState() => _FlutterSpeechToTextState();
}

class _FlutterSpeechToTextState extends State<FlutterSpeechToText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.tittle)),
      body: Center(
        child: Text(widget.tittle),
      ),
    );
  }
}
