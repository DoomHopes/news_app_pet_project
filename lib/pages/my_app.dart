import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app_pet_project/widgets/drawer_widget.dart';
import 'package:provider/provider.dart';
import 'package:news_app_pet_project/providers/myapp_provider.dart';

import '../constants.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyAppProvider>(
      builder: (context, providerData, child) => Scaffold(
        backgroundColor: Colors.white,
        drawer: DrawerWidget(),
        appBar: AppBar(
          title: Text('NewsApp'),
        ),
        body: Visibility(
          child: providerData.listViewBuilder(context, bitCoin),
        ),
      ),
    );

    /*return MaterialApp(
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
    );*/
  }
}
