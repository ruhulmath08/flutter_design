import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class FlutterGridViewScreen extends StatefulWidget {
  final String title;

  FlutterGridViewScreen({Key key, this.title}) : super(key: key);

  @override
  _FlutterGridViewScreenState createState() =>
      new _FlutterGridViewScreenState();
}

class _FlutterGridViewScreenState extends State<FlutterGridViewScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  //for handle back arrow and back button
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.blue,
        bottom: TabBar(
          controller: _controller,
          indicatorWeight: 3,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.dashboard),
              child: Text("Grid With List"),
            ),
            Tab(
              icon: Icon(Icons.credit_card),
              child: Text("Grid With Card"),
            ),
            Tab(
              icon: Icon(Icons.code),
              child: Text("Code"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          GridViewWithList(),
          GridViewWithCard(),
          CodeView(),
        ],
      ),
    );
  }
}

//---------------------------- GridViewWithList: Start ----------------------------//
class GridViewWithList extends StatefulWidget {
  @override
  _GridViewWithListState createState() => new _GridViewWithListState();
}

class _GridViewWithListState extends State<GridViewWithList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.all(5.0), //padding in body
        crossAxisCount: 2,
        children: List.generate(
          30,
          (index) => Card(
            elevation: 10,
            margin: EdgeInsets.all(5.0), //padding in card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(8),
            ),
            child: Center(
              child: Text(
                "Card: ${(index + 1).toString()}",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//---------------------------- GridViewWithList: End ----------------------------//

//---------------------------- GridViewWithCard: Start ----------------------------//
class GridViewWithCard extends StatefulWidget {
  @override
  _GridViewWithCardState createState() => new _GridViewWithCardState();
}

class _GridViewWithCardState extends State<GridViewWithCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.all(5.0),
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 2.4),
        children: <Widget>[
          Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.laptop,
                  size: 100,
                ),
                Text(
                  "Laptop",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10.0,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.laptop_mac,
                  size: 100,
                ),
                Text(
                  "Laptop Mac",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10.0,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.laptop_mac,
                  size: 100,
                ),
                Text(
                  "Laptop Mac",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10.0,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.laptop_mac,
                  size: 100,
                ),
                Text(
                  "Laptop Mac",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10.0,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.laptop_mac,
                  size: 100,
                ),
                Text(
                  "Laptop Mac",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Card(
            elevation: 10.0,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.laptop_mac,
                  size: 100,
                ),
                Text(
                  "Laptop Mac",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//---------------------------- GridViewWithCard: End ----------------------------//

//---------------------------- GridViewWithCard: Start ----------------------------//
class CodeView extends StatefulWidget {
  @override
  _CodeViewState createState() => new _CodeViewState();
}

class _CodeViewState extends State<CodeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("CodeView"),
      ),
    );
  }
}
//---------------------------- GridViewWithCard: End ----------------------------//
