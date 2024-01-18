import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=9f94525ab606414ba4350f815e617c33&category=$category');
      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articles = jasonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articlModel = ArticleModel.fromJson(article);
        articlesList.add(articlModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
