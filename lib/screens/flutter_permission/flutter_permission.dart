import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class FlutterPermission extends StatefulWidget {
  FlutterPermission({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlutterPermissionState createState() => new _FlutterPermissionState();
}

class _FlutterPermissionState extends State<FlutterPermission> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            ButtonTheme(
              height: 50.0,
              child: RaisedButton(
                color: Colors.blue,
                elevation: 5,
                child: Text(
                  'Camera Permission',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  checkPermission();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void checkPermission() async {
    try{
      var status = await Permission.camera.status;
    }catch(e){
      print(e);
    }

//    if(!status.isGranted){
//      PermissionStatus permissionStatus = await Permission.camera.request();
//      print('permissionStatus: ${permissionStatus.isGranted}');
//    }else{
//
//    }
  }
}
