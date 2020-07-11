import 'package:flutter/material.dart';

class CollapseToolbar extends StatefulWidget {
  final String name;

  const CollapseToolbar({Key key, this.name}) : super(key: key);

  @override
  _CollapseToolbarState createState() => _CollapseToolbarState(name);
}

class _CollapseToolbarState extends State<CollapseToolbar> {
  String nameTitle;

  _CollapseToolbarState(String name) {
    nameTitle = name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: () {
                  print("clicked");
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Collapse Toolbar'),
              //titlePadding: const EdgeInsets.only(left: 45, bottom: 15),
              background: SafeArea(
                child: Image.asset(
                  'assets/images/collapse_toolbar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Everything you need to search, fetch, and insert beautiful Unsplash',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
