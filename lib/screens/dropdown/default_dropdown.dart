import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultDropDown extends StatefulWidget {
  final String pageTitle;

  const DefaultDropDown({Key key, this.pageTitle}) : super(key: key);

  @override
  _DefaultDropDownState createState() => _DefaultDropDownState();
}

class _DefaultDropDownState extends State<DefaultDropDown> {
  var countriesList = ['Bangladesh', 'India', 'Pakistan', 'Chain'];

  var country = "Bangladesh";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.pageTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child:  Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Text(
                  "Select Country",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                flex: 3,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: country,
                  iconSize: 24,
                  elevation: 16,
                  underline: Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  onChanged: (String newValue) {
                    setState(
                          () {
                        country = newValue;
                      },
                    );
                  },
                  items: countriesList
                      .map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
