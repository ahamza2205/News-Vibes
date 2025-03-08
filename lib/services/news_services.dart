import 'package:dio/dio.dart';
import 'package:news_vibes/models/articale_model.dart';

class NewsServices {
  final Dio dio = Dio();

  NewsServices();

  Future<List<ArticaleModel>> getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=004371e682d8476aa44d9688f70e0f3c&country=us&category=general');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticaleModel> articlesList = [];

    for (var article in articles) {
      ArticaleModel articaleModel = ArticaleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articaleModel);
    }
    return articlesList;
  }
}
