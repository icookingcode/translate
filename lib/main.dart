import 'package:flutter/material.dart';

import 'animation/open_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Translate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
//      home: OpenAnimation(),
      initialRoute: '/',
      routes: {
        '/': (context) => OpenAnimation(),
      },
    );
  }
}
