import 'package:flutter/material.dart';
import 'package:flutter_design/screens/bottom_navigation_bar/tab_screens.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final String name;

  //const MyBottomNavigationBar(this.name);

  MyBottomNavigationBar({Key key, this.name}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    TabScreen(Colors.green),
    TabScreen(Colors.red),
    TabScreen(Colors.pinkAccent)
  ];

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.name}'),
        ),
        body: tabs[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: currentTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () => launch("mailto:ruhulmath08@gmail.com"),
                child: Icon(Icons.mail),
              ),
              title: Text('Email'),
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () => launch("tel://01745077380"),
                child: Icon(Icons.phone),
              ),
              title: Text('Call'),
            ),
          ],
        ));
  }
}
