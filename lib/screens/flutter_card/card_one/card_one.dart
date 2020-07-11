import 'package:flutter/material.dart';

class CardOne extends StatelessWidget {
  Size size;
  final String name;

  CardOne({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.keyboard_backspace),
          title: Text('$name'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: size.height / 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    createGridItem(0),
                    createGridItem(1),
                    createGridItem(2),
                    createGridItem(3),
                    createGridItem(4),
                    createGridItem(5),
                    createGridItem(6),
                    createGridItem(7),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget createGridItem(int position) {
    var color = Colors.white;
    var iconData = Icons.add;
    var titleText = '';

    switch (position) {
      case 0:
        color = Colors.cyan;
        iconData = Icons.mobile_screen_share;
        titleText = "Mobile";
        break;

      case 1:
        color = Colors.deepPurple;
        iconData = Icons.phone;
        titleText = "Phone";
        break;

      case 2:
        color = Colors.orange[300];
        iconData = Icons.android;
        titleText = "Android";
        break;

      case 3:
        color = Colors.pinkAccent;
        iconData = Icons.phone_iphone;
        titleText = "iPhone";
        break;

      case 4:
        color = Colors.teal[900];
        iconData = Icons.laptop;
        titleText = "Laptop";
        break;

      case 5:
        color = Colors.green[600];
        iconData = Icons.desktop_mac;
        titleText = "Computer";
        break;

      case 6:
        color = Colors.redAccent;
        iconData = Icons.router;
        titleText = "Router";
        break;

      case 7:
        color = Colors.blue;
        iconData = Icons.camera_alt;
        titleText = "Camera";
        break;
    }

    return Builder(builder: (context) {
      return Padding(
        padding:
            const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
        child: Card(
          elevation: 10,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(color: Colors.white),
          ),
          child: InkWell(
            onTap: () {
              Scaffold.of(context).showSnackBar(
                  SnackBar(content: Text("Selected Item $position")));
            },
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    iconData,
                    size: 60,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 10),
                    child: Text(
                      "$titleText",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
      ;
    });
  }
}

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // set the paint color to be white
    paint.color = Colors.white;
    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);
    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);
    paint.color = Colors.greenAccent[400];
    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();
    canvas.drawPath(path, paint);
    /* // set the color property of the paint
    paint.color = Colors.deepOrange;
    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2);
    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 75.0, paint);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
