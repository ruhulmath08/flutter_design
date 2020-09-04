import 'package:flutter/material.dart';

class SwitchButtonScreen extends StatefulWidget {

final String title;

  const SwitchButtonScreen({Key key, this.title}) : super(key: key);
  @override
  _SwitchButtonScreenState createState() => _SwitchButtonScreenState();
}

class _SwitchButtonScreenState extends State<SwitchButtonScreen> {
  //switch button
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sync Data With Server", style: TextStyle(fontSize: 20,),),
            Switch(
              value: _isSwitched,
              onChanged: (value){
                setState(() {
                  _isSwitched = value;
                  print(_isSwitched);
                });
              },
              activeTrackColor: Colors.blue[300],
              activeColor: Colors.blue,
            ),
            Text("${_isSwitched.toString()}", style: TextStyle(fontSize: 20,),),
          ],
        ),
      ),
    );
  }
}
