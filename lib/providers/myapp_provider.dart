import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_pet_project/models/articles.dart';
import 'package:news_app_pet_project/widgets/circular_progress_loading.dart';
import 'package:news_app_pet_project/widgets/list_view_builder.dart';
import 'dart:convert';

class MyAppProvider extends ChangeNotifier {
  List<Article> workList = [];

  Widget listViewBuilder(BuildContext context, String url) {
    if (workList.isEmpty) {
      getReturnedListFromAPI(url);
      return const CircularProgressLoading();
    } else {
      return ListViewBuilder(listHome: workList);
    }
  }

  Future<void> getReturnedListFromAPI(String url) async {
    workList = await getData(url);
    notifyListeners();
  }

  Future<List<Article>> getData(String url) async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic jsonData = json.decode(response.body);
      final List<dynamic> listMap = jsonData['articles'];
      return addToList(listMap);
    } else {
      throw Exception('Failed to load data');
    }
  }

  List<Article> addToList(List<dynamic> addList) {
    List<Article> newNewsList = [];
    newNewsList =
        addList.map<Article>((json) => Article.fromJson(json)).toList();
    return newNewsList;
  }
}
