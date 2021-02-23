import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NewsApp',
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('NewsApp'),
        ),
        body: Center(
          child: Text('Here could be your advertisement'),
        ),
      ),
    );
  }
}
