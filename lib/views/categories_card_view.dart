
import 'package:daily_news/models/category_model.dart';
import 'package:daily_news/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesCardView extends StatelessWidget {
  CategoriesCardView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(name: 'sports', img: 'assets/sports.avif'),
    CategoryModel(name: 'technology', img: 'assets/technology.jpeg'),
    CategoryModel(name: 'health', img: 'assets/health.avif'),
    CategoryModel(name: 'general', img: 'assets/general.avif'),
    CategoryModel(name: 'business', img: 'assets/business.avif'),
    CategoryModel(name: 'science', img: 'assets/science.avif'),
    CategoryModel(name: 'entertainment', img: 'assets/entertaiment.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

class CategorisListView extends StatelessWidget {
  const CategorisListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(name: 'sports', img: 'assets/sports.avif'),
    CategoryModel(name: 'business', img: 'assets/business.avif'),
    CategoryModel(name: 'technology', img: 'assets/technology.jpeg'),
    CategoryModel(name: 'science', img: 'assets/science.avif'),
    CategoryModel(name: 'entertainment', img: 'assets/entertaiment.avif'),
    CategoryModel(name: 'general', img: 'assets/general.avif'),
    CategoryModel(name: 'health', img: 'assets/health.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => CategoryCard(
            category: categories[index],
          ),
        ),
      ),
    );
  }
}
*/