import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardInsideList extends StatelessWidget {
  final String name;

  const CardInsideList({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Inside ListView'),
      ),
      body: Center(
        child: ListView(

          children: <Widget>[
            Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      child: SizedBox(
                        child: Icon(
                          Icons.person,
                          size: 45,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      width: 2,
                      thickness: 3,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Md. Ruhul Amin',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('Programmer'),
                          Text('01745077380')
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          child: Icon(
                            Icons.call,
                            size: 30,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _myListView(BuildContext context) {
  final titles = [
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'subway',
    'transit',
    'walk'
  ];

  final icons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card(
        elevation: 5,
        //margin: EdgeInsets.only(bottom: 5),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 50,
                child: Icon(
                  icons[index],
                  size: 40,
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(titles[index]),
                  Text(titles[index]),
                ],
              ),
              onTap: () {
                print('Press: $index');
              },
            ),
          ],
        ),
      );
    },
  );
}
