import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  Dio dio;

  NewsService({required this.dio});
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$category&apiKey=508c23e3f5024b63a6fab5d978cd095d');
      //     'https://newsapi.org/v2/top-headlines?country=us&apiKey=508c23e3f5024b63a6fab5d978cd095d&category=general');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleModels = [];
      for (var article in articles) {
        articleModels.add(ArticleModel.fromJson(article));
      }
      return articleModels;
    } catch (e) {
      return [];
    }
  }
}
