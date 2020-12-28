import 'package:flutter/material.dart';

Widget myDrawer() {
  return Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
            accountName: Text("Md. Ruhul Amin"),
            accountEmail: Text("ruhulmath08@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars3.githubusercontent.com/u/19272924?s=460&u=bff8f9b0562582e2503af1fe87323e7b8bbee33d&v=4"),
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                child: Icon(Icons.edit),
              ),
            ]),
        ListTile(
          trailing: Icon(Icons.touch_app_sharp, color: Colors.black),
          title: Text("Button"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          trailing: Icon(Icons.credit_card, color: Colors.black),
          title: Text("Card"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          trailing: Icon(Icons.list, color: Colors.black),
          title: Text("ListView"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          trailing: Icon(Icons.messenger, color: Colors.black),
          title: Text("Alert Dialog"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          trailing: Icon(Icons.table_view, color: Colors.black),
          title: Text("Data Table"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          trailing: CircleAvatar(child: Text("D&A")),
          title: Text("Data Structure & Algorithm"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          trailing: CircleAvatar(child: Text("FP")),
          title: Text("Flutter Package"),
        ),
        Divider(color: Colors.blue, thickness: 1),
        ListTile(
          enabled: false,
          trailing: Icon(Icons.settings, color: Colors.black),
          title: Text("Setting"),
        ),
      ],
    ),
  );
}
