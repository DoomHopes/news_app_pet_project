import 'package:flutter/material.dart';

import '../models/news_model.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key key, @required this.listHome}) : super(key: key);

  final List<NewsModel> listHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsApp'),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: listHome.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    constraints: BoxConstraints.tightFor(width: 100.0),
                    child: Image.network(
                        listHome[index].articles[index].urlToImage),
                  ),
                  title: Text(listHome[index].articles[index].title),
                  subtitle: Text(listHome[index].articles[index].description),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
