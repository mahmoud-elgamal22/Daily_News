
import 'package:daily_news/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DailyNews());
}

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
