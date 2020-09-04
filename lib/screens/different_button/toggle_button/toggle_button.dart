import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget {
  final String title;

  const ToggleButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  //ToggleButton with text
  List<bool> _isSelectedOs;
  List<String> mobileOsNames = ["Android", "IOS", "Harmony", "BlackBerry"];
  String mobileOsName = "Android";

  //ToggleButton with image and text
  List<bool> _isSelectedDevice;
  List<String> deviceNames = ["Smartphone", "Laptop", "Desktop"];
  String deviceName = "Smartphone";

  @override
  void initState() {
    super.initState();
    _isSelectedOs = [true, false, false, false];
    _isSelectedDevice = [true, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ToggleButton With Text",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Select Your Mobile OS Name: ",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ToggleButtons(
                borderColor: Colors.red,
                fillColor: Colors.blue,
                borderWidth: 1,
                selectedBorderColor: Colors.red,
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(5),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Android',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'IOS',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Harmony',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'BlackBerry',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < _isSelectedOs.length; i++) {
                      //i == index ? _isSelectedOs[i] = true : _isSelectedOs[i] = false;
                      _isSelectedOs[i] = i == index;
                    }
                    mobileOsName = mobileOsNames[index];
                  });
                },
                isSelected: _isSelectedOs,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ToggleButton With Image & Text",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Select Your Mobile OS Name: ",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ToggleButtons(
                borderColor: Colors.red,
                fillColor: Colors.blue,
                borderWidth: 1,
                selectedBorderColor: Colors.red,
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.smartphone),
                        SizedBox(width: 10,),
                        Text(
                          'Smartphone',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.laptop),
                        SizedBox(width: 10,),
                        Text(
                          'Laptop',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.desktop_mac),
                        SizedBox(width: 10,),
                        Text(
                          'Desktop',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
                onPressed: (int index){
                  setState(() {
                    for(int i = 0; i < _isSelectedDevice.length; i++){
                      //i == index ? _isSelectedOs[i] = true : _isSelectedOs[i] = false;
                      _isSelectedDevice[i] = i == index;
                    }
                    deviceName = deviceNames[index];
                  });
                },
                isSelected: _isSelectedDevice,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Divider(
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Result",
            style: TextStyle(
              fontSize: 20,
              //color: Colors.greenAccent
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Your Mobile OS Name : ",
                style: TextStyle(
                  fontSize: 20,
                  //color: Colors.greenAccent
                ),
              ),
              Text(
                "$mobileOsName",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Your Device Name : ",
                style: TextStyle(
                  fontSize: 20,
                  //color: Colors.greenAccent
                ),
              ),
              Text(
                "$deviceName",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
