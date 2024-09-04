
import 'package:daily_news/models/news_model.dart';
import 'package:daily_news/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});
  final List<NewsModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: NewsTile(
            newsModel: articles[index],
          ),
        ),
      ),
    );
  }
}
