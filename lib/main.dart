import 'package:flutter/material.dart';
import 'package:news_app_pet_project/providers/myapp_provider.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyAppProvider>(
          create: (_) => MyAppProvider(),
        )
      ],
      child: MaterialApp(
        locale: Locale('ru'),
        title: 'NewsApp',
        initialRoute: '/first',
        routes: {
          '/first': (context) => MyApp(),
        },
      ),
    );
  }
}
