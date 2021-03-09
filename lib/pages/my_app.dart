import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_pet_project/widgets/search_widget.dart';
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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: Search());
              },
            )
          ],
        ),
        body: Visibility(
          child: providerData.listViewBuilder(baseUkrUrl),
        ),
      ),
    );
  }
}
