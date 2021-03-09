import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// NOT USED
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

  final String imageUrl;
  final String title;
  final String description;
  final String author;
  final String publishedAt;
  final String content;

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
