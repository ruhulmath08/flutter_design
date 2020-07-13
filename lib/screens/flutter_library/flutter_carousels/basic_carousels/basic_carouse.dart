import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BasicCarouse extends StatefulWidget {
  BasicCarouse({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BasicCarouseState createState() => new _BasicCarouseState();
}

class _BasicCarouseState extends State<BasicCarouse> {
  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
        child: CarouselSlider(
          options: CarouselOptions(
            disableCenter: false,
          ),
          items: list
              .map(
                (item) => Container(
                  child: Center(
                    child: Text(
                      item.toString(),
                      style: TextStyle(
                        fontSize: 59,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.red,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
