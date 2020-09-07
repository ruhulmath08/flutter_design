import 'dart:math';

import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:syntax_highlighter/syntax_highlighter.dart';

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
          CodeView(
            codeGithubPath:
                "https://github.com/ruhulmath08/flutter_design/blob/master/lib/screens/flutter_grid_view/flutter_grid_view.dart",
          ),
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
  final String recipeName;
  final String pageName;
  final String codeFilePath;
  final String codeGithubPath;

  const CodeView({
    Key key,
    this.recipeName,
    this.pageName,
    this.codeFilePath,
    this.codeGithubPath,
  }) : super(key: key);

  @override
  _CodeViewState createState() => new _CodeViewState();
}

class _CodeViewState extends State<CodeView> {
  double scaleFactorText = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: rootBundle.loadString(widget.codeFilePath) ??
            'Error loading code file ${this.widget.codeFilePath}',
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Padding(
                padding: EdgeInsets.all(4.0),
                child: highlightCodeSyntax(snapshot.data, context),
              ),
              floatingActionButton: AnimatedFloatingActionButton(
                fabButtons: codepreviewActions(),
                colorStartAnimation: Colors.blue,
                colorEndAnimation: Colors.cyan,
                animatedIconData: AnimatedIcons.menu_close,
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  List<Widget> codepreviewActions() {
    return <Widget>[
      //making text smaller
      FloatingActionButton(
        heroTag: "zoom_out",
        child: Icon(Icons.zoom_out),
        tooltip: 'Zoom out',
        onPressed: () => setState(() {
          this.scaleFactorText = max(0.8, this.scaleFactorText - 0.1);
        }),
      ),
      //making text bigger
      FloatingActionButton(
        heroTag: "zoom_in",
        child: Icon(Icons.zoom_in),
        tooltip: 'Zoom in',
        onPressed: () => setState(() {
          this.scaleFactorText += 0.1;
        }),
      ),
      FloatingActionButton(
        heroTag: "open_page",
        child: Icon(Icons.slideshow),
        tooltip: 'See Demo',
        onPressed: () => Navigator.popAndPushNamed(
          context,
          widget.pageName,
          // arguments: ScreenArguments(widget.recipeName, widget.pageName,
          //     widget.codeFilePath, widget.codeGithubPath),
        ),
      ),
    ];
  }

  Widget highlightCodeSyntax(String codeContent, BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();
    return Container(
      constraints: BoxConstraints.expand(),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RichText(
              textScaleFactor: this.scaleFactorText,
              text: TextSpan(
                style: TextStyle(fontFamily: 'monospace', fontSize: 12.0),
                children: <TextSpan>[
                  DartSyntaxHighlighter(style).format(codeContent)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//---------------------------- GridViewWithCard: End ----------------------------//
