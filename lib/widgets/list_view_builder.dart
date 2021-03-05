import 'package:flutter/material.dart';
import 'package:news_app_pet_project/models/articles.dart';
import 'package:news_app_pet_project/widgets/web_view.dart';

import '../constants.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({Key key, @required this.listHome}) : super(key: key);

  final List<Article> listHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: listHome.length,
        itemBuilder: (context, index) {
          String imageUrl = '';
          if (listHome[index].urlToImage == null) {
            imageUrl = imageNoDataUrl;
          } else {
            imageUrl = listHome[index].urlToImage;
          }

          String url;
          if (listHome[index].url == null) {
            url = 'null';
          } else {
            url = listHome[index].url;
          }

          String title;
          if (listHome[index].title == null) {
            title = 'Нет названия :(';
          } else {
            title = listHome[index].title;
          }

          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    constraints: BoxConstraints.tightFor(width: 80.0),
                    child: Image.network(imageUrl),
                  ),
                  title: Text(title),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => WebViewWidget(
                              url: url,
                            ));
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
