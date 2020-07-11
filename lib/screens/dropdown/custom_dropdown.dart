import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final String title;

  CustomDropdown({Key key, this.title}) : super(key: key);

  @override
  _CustomDropdownState createState() => new _CustomDropdownState();
}

/// // 1. After the page has been created, register it with the app routes
/// routes: <String, WidgetBuilder>{
///   CustomDropdown.routeName: (BuildContext context) => new CustomDropdown(title: "CustomDropdown"),
/// },
///
/// // 2. Then this could be used to navigate to the page.
/// Navigator.pushNamed(context, CustomDropdown.routeName);
///

class _CustomDropdownState extends State<CustomDropdown> {

  var countriesList = ['Bangladesh', 'India', 'Pakistan', 'Chain'];
  var dropDownValue = "Bangladesh";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        width: MediaQuery.of(context).size.width * 0.3,
        margin: EdgeInsets.only(
            top: 0, left: MediaQuery.of(context).size.width * 0.75),
        padding: EdgeInsets.only(),
        child: Center(
          child: Align(
            alignment: Alignment.topRight,
            child: DropdownButton<String>(
              value: dropDownValue,
              // icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              isExpanded: true,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                height: 1.5,
              ),
              // underline: Container(
              //   height: 2,
              //   color: Colors.deepPurpleAccent,
              // ),
              onChanged: (String newValue) {
                setState(() {
                  dropDownValue = newValue;
                });
              },
              items:
              countriesList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                    child: Container(
                      child: Text(
                        value,
                        textAlign: TextAlign.right,
                      ),
                    ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onFloatingActionButtonPressed,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }

  void _onFloatingActionButtonPressed() {}
}
