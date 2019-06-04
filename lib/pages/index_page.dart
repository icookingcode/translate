import 'package:flutter/material.dart';

import 'drawer_page.dart';
import 'home_body.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translate'),
        elevation: 0.0,
      ),
      body: HomeBody(),
      drawer: DrawerPage(),
    );
  }
}
