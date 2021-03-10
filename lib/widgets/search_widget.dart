import 'package:flutter/material.dart';
import 'package:news_app_pet_project/providers/myapp_provider.dart';
import 'package:provider/provider.dart';

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Consumer<MyAppProvider>(
      builder: (context, providerData, child) => Visibility(
        child: providerData.searchListViewBuilder(
            'https://newsapi.org/v2/everything?qInTitle=$query&sortBy=popularitypageSize=40&apiKey=7267b90112544bbc9212f981b3715b31'),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Column();
  }
}
