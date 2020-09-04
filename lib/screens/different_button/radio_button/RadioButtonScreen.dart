import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  final String title;

  const RadioButtonScreen({Key key, this.title}) : super(key: key);

  @override
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {
  //radio button in row
  String gender = "Mail";
  int genderValue = 1;

  void selectGender(int value) {
    setState(() {
      genderValue = value;
    });
  }

  //radio button in column
  String language = "Java";
  int languageValue = 1;

  void selectLanguage(int value) {
    setState(() {
      languageValue = value;
    });
  }

  //radio button from stackoverflow
  int _sofGroupValue = -1; //sof means stackoverflow

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
            Text(
              "Radio button in row",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Gender: "),
                SizedBox(
                  width: 5,
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: genderValue,
                      value: 1,
                      onChanged: (value) {
                        selectGender(value);
                        gender = "Male";
                        print("$gender : Value : $value");
                      },
                    ),
                    Text("Male"),
                    Radio(
                      groupValue: genderValue,
                      value: 2,
                      onChanged: (value) {
                        selectGender(value);
                        gender = "Female";
                        print("$gender : Value : $value");
                      },
                    ),
                    Text("Female"),
                    Radio(
                      groupValue: genderValue,
                      value: 3,
                      onChanged: (value) {
                        selectGender(value);
                        gender = "Others";
                        print("$gender : Value : $value");
                      },
                    ),
                    Text("Others"),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Radio button in column",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Favourite Language",
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: languageValue,
                      value: 1,
                      onChanged: (value) {
                        selectLanguage(value);
                        language = "Java";
                        print("$language : Value : $value");
                      },
                    ),
                    Text("Java")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: languageValue,
                      value: 2,
                      onChanged: (value) {
                        selectLanguage(value);
                        language = "Dart";
                        print("$language : Value : $value");
                      },
                    ),
                    Text("Dart")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: languageValue,
                      value: 3,
                      onChanged: (value) {
                        selectLanguage(value);
                        language = "Java Script";
                        print("$language : Value : $value");
                      },
                    ),
                    Text("Java Script")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      groupValue: languageValue,
                      value: 4,
                      onChanged: (value) {
                        selectLanguage(value);
                        language = "PHP";
                        print("$language : Value : $value");
                      },
                    ),
                    Text("PHP")
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey,
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
                  "Select Gender : ",
                  style: TextStyle(
                    fontSize: 20,
                    //color: Colors.greenAccent
                  ),
                ),
                Text(
                  "$gender",
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
                  "Favourite Language : ",
                  style: TextStyle(
                    fontSize: 20,
                    //color: Colors.greenAccent
                  ),
                ),
                Text(
                  "$language",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
