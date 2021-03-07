import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_pet_project/providers/myapp_provider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class DrawerWidget extends Drawer {
  DrawerWidget()
      : super(
          child: Container(
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  child: const DrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(drawerImage),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    child: null,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                ),
                ListTile(
                  title: Text('Item 2'),
                ),
                ListTile(
                  title: Text('Item 3'),
                ),
              ],
            ),
          ),
        );
}
