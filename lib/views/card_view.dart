
import 'package:daily_news/views/news_list_view_builder.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Daily",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Text(
              "News ",
              style: TextStyle(
                color: Color.fromARGB(255, 242, 58, 58),
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
        
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}
