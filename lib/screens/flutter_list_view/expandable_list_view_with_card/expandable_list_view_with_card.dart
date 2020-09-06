import 'package:flutter/material.dart';

class ExpandableListViewWithCard extends StatefulWidget {
  final String title;

  const ExpandableListViewWithCard({Key key, this.title}) : super(key: key);

  @override
  _ExpandableListViewWithCardState createState() =>
      _ExpandableListViewWithCardState();
}

class _ExpandableListViewWithCardState
    extends State<ExpandableListViewWithCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(
            data[index],
          ),
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
    "Different Button",
    <Entry>[
      Entry("RaisedButton"),
      Entry("OutlineButton"),
      Entry("FlatButton"),
      Entry("IconButton"),
      Entry("FloatingActionButton"),
      Entry("RadioButton"),
      Entry("ToggleButton"),
      Entry("CheckBox"),
      Entry("MaterialButton"),
      Entry("Button Inside Circle"),
    ],
  ),
  Entry(
    "Date Picker",
    <Entry>[
      Entry("Flutter DatePicker"),
      Entry("Flutter Range Date Picker"),
      Entry("Flutter DateTime Picker"),
    ],
  ),
  Entry(
    "Toolbar in Flutter",
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
    "Card Design in Flutter",
    <Entry>[
      Entry("Card With Grid"),
      Entry("Card Inside ListView"),
    ],
  ),
  Entry(
    "Dialog Box Design",
    <Entry>[
      Entry("Dialog"),
      Entry("Custom Dialog"),
    ],
  ),
  Entry(
    "Dropdown Button",
    <Entry>[
      Entry("Dropdown"),
      Entry("Custom Dropdown"),
    ],
  ),
  Entry(
    "ListView in Flutter",
    <Entry>[
      Entry("ListView"),
      Entry("Expandable ListView"),
    ],
  ),
  Entry(
    "Search in Flutter",
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
    "Library In Flutter",
    <Entry>[
      Entry("Introduction Screen"),
      Entry("Flutter Carousels"),
    ],
  ),
  Entry(
    "Design Pattern in Flutter",
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
      return Card(
        elevation: 5,
        child: ListTile(
          leading: CircleAvatar(
            child: Text(
              "${root.title[0]}",
            ),
          ),
          title: Text(root.title),
          trailing: Icon(
            Icons.arrow_forward_ios,
          ),
          onTap: () {
            print(root.title);
          },
        ),
      );
    }
    return Card(
      elevation: 5,
      child: ExpansionTile(
        key: PageStorageKey<Entry>(root),
        leading: CircleAvatar(
          child: Text("${root.title[0]}"),
        ),
        title: Text(root.title),
        children: root.children.map<Widget>(_buildTiles).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
