
import 'package:daily_news/models/news_model.dart';
import 'package:dio/dio.dart';

String url = 'https://gnews.io/api/v4/top-headlines?category=';
String key = '&apikey=9cd946a6772ef36df57f39f34ca627ab&country=eg';


class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      final Response response = await dio.get('$url$category$key');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> articlesList = [];

      for (var acrticle in articles) {
        NewsModel newsModel = NewsModel(
          url: acrticle['url'],
          img: acrticle['image'],
          title: acrticle['title'],
          subTitle: acrticle['description'],
        );
        articlesList.add(newsModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
