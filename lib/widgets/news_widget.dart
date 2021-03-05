import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget(
      {Key key,
      this.imageUrl,
      this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.title})
      : super(key: key);

  String imageUrl;
  String title;
  String description;
  String author;
  String publishedAt;
  String content;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.network(imageUrl),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            '\n' + description,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text('\n' + author),
          Text('\n' + publishedAt),
        ],
      ),
    );
  }
}
