import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  final Color color;

  const TabScreen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
