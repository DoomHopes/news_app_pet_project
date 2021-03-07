import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_pet_project/pages/my_app.dart';
import 'package:news_app_pet_project/providers/myapp_provider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class DrawerWidget extends StatelessWidget {
  MyAppProvider providerData;

  DrawerWidget(this.providerData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        child: new ListView(
          children: <Widget>[
            Container(
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(drawerImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
            ),
            ListTile(
              title: Text('Ukraine'),
              onTap: () {
                providerData.updateWidget(baseUkrUrl);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Business'),
              onTap: () {
                providerData.updateWidget(businessUrl);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Technology'),
              onTap: () {
                providerData.updateWidget(technologyUrl);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('BitCoin'),
              onTap: () {
                providerData.updateWidget(bitCoin);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Sports'),
              onTap: () {
                providerData.updateWidget(sportsUrl);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Entertainment'),
              onTap: () {
                providerData.updateWidget(entertainmentUrl);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Health'),
              onTap: () {
                providerData.updateWidget(healthUrl);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
