import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:news_app_pet_project/widgets/circular_progress_loading.dart';
import 'package:news_app_pet_project/widgets/list_view_builder.dart';
import 'dart:convert';

import '../models/news_model.dart';

class MyAppProvider extends ChangeNotifier {
  List<NewsModel> workList = [];

  Widget listViewBuilder(BuildContext context, String url) {
    if (workList.isEmpty) {
      getData(url);
      return const CircularProgressLoading();
    } else {
      return ListViewBuilder(listHome: workList);
    }
  }

  Future<List<NewsModel>> getData(String url) async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final dynamic jsonData = json.decode(response.body);
      final List<dynamic> listMap = jsonData;
      workList = addToList(listMap);
      notifyListeners();
      return workList;
    } else {
      throw Exception('Failed to load data');
    }
  }

  List<NewsModel> addToList(List<dynamic> addList) {
    List<NewsModel> newNewsList = [];
    newNewsList =
        addList.map<NewsModel>((json) => NewsModel.fromJson(json)).toList();
    return newNewsList;
  }
}
