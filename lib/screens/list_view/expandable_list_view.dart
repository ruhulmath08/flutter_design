import 'package:flutter/material.dart';

class MyExpandableListView extends StatefulWidget {
  final String title;

  const MyExpandableListView({Key key, this.title}) : super(key: key);

  @override
  _MyExpandableListViewState createState() => _MyExpandableListViewState();
}

class _MyExpandableListViewState extends State<MyExpandableListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) => EntryItem(
          data[index],
        ),
      ),
    );
  }
}

// Welcome to another flutter tutorial
// In this video we will see how to create a multi-level Expansion List
// First Let's create a class for each row in the Expansion List

class Entry {
  final String title;
  final List<Entry>
      children; // Since this is an expansion list ...children can be another list of entries
  Entry(this.title, [this.children = const <Entry>[]]);
}

// This is the entire multi-level list displayed by this app
final List<Entry> data = <Entry>[
  Entry(
    "Flutter Toolbar",
    <Entry>[
      Entry("Collapse ToolBar"),
    ],
  ),
  // Second Row
  Entry(
    "Bottom Navigation Bar",
    <Entry>[
      Entry("Simple Bottom Navigation Bar"),
      Entry("Animated Navigation Bar"),
    ],
  ),
  Entry(
    "Flutter Card",
    <Entry>[
      Entry("Card With Grid"),
      Entry("Card Inside ListView"),
    ],
  ),
  Entry(
    "Flutter Dialog Box",
    <Entry>[
      Entry("Dialog"),
      Entry("Custom Dialog"),
    ],
  ),
  Entry(
    "Flutter Dropdown",
    <Entry>[
      Entry("Dropdown"),
      Entry("Custom Dropdown"),
    ],
  ),
  Entry(
    "Flutter ListView",
    <Entry>[
      Entry("ListView"),
      Entry("Expandable ListView"),
    ],
  ),
  Entry(
    "Flutter Search",
    <Entry>[
      Entry("Search in Toolbar"),
      Entry("Expandable ListView"),
    ],
  ),
  Entry(
    "Flutter Permission",
    <Entry>[
      Entry("Camera Permission"),
    ],
  ),
  Entry(
    "Flutter Library",
    <Entry>[
      Entry("Introduction Screen"),
      Entry("Flutter Carousels"),
    ],
  ),
  Entry(
    "Flutter Pattern",
    <Entry>[
      Entry("Flutter BLoC Pattern"),
    ],
  ),
];

// Create the Widget for the row
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),

    );


  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
