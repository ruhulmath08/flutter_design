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
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => EntryItem(
            data[index],
            index,
          ),
        ),
      ),
    );
  }
}

class Entry {
  final String title;

  // Since this is an expansion list ...children can be another list of entries
  final List<Entry> children;

  Entry(
    this.title, [
    this.children = const <Entry>[],
  ]);
}

// This is the entire multi-level list displayed by this app
final List<Entry> data = <Entry>[
  Entry(
    "Different Button",
    <Entry>[
      Entry("RaisedButton"),
      Entry("OutlineButton"),
      Entry("FlatButton"),
      Entry("Popup Menu Button"),
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
  const EntryItem(this.entry, this.index);

  final Entry entry;
  final int index;

  // This function recursively creates the multi-level list rows.
  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.greenAccent,
            child: Text(
              "${root.title[0]}",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          title: Text(root.title),
          trailing: Icon(
            Icons.arrow_forward_ios,
          ),
          onTap: () {
            print(root.title);
            print(root.children);
          },
        ),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      leading: CircleAvatar(
        child: Text(
          "${(index + 1).toString()}",
        ),
      ),
      title: Text(root.title),
      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
