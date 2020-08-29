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
  int _selectedPage = 1;
  final _pageOptions = [
    HomePage(),
    DailyPage(),
    LandscapePage(),
  ];

  List<Widget> tabs = [
    TabScreen(Colors.green),
    TabScreen(Colors.red),
    TabScreen(Colors.pinkAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.name}'),
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        selectedFontSize: 16,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Daily")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.landscape),
              title: Text("Landscape")
          ),
        ],
      ),
    );
  }
}

//home page
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

//daily page
class DailyPage extends StatefulWidget {
  @override
  _DailyPageState createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Daily Page"),
      ),
    );
  }
}

//landscape page
class LandscapePage extends StatefulWidget {
  @override
  _LandscapePageState createState() => _LandscapePageState();
}

class _LandscapePageState extends State<LandscapePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Landscape Page"),
      ),
    );
  }
}
