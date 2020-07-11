import 'package:flutter/material.dart';
import 'package:flutter_design/routing/router.dart';
import 'package:flutter_design/routing/routing_constants.dart';
import 'package:flutter_design/screens/undefined/undefined_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final String undefinedView = "Undefined View";

  @override
  Widget build(BuildContext context) {

    final String undefinedView = "Undefined View";

    return MaterialApp(
      title: 'Named Routing',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: LOGIN_VIEW_ROUTE,
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => UndefinedScreen(name: undefinedView)),
    );
  }
}
