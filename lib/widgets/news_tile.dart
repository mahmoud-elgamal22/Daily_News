import 'package:cached_network_image/cached_network_image.dart';
import 'package:daily_news/models/news_model.dart';
import 'package:daily_news/views/web_view.dart';
import 'package:flutter/material.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(url: newsModel.url),
          ),
        );
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: CachedNetworkImage(
              imageUrl: newsModel.img,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => CachedNetworkImage(
                imageUrl:
                    'https://th.bing.com/th/id/OIP.H1gHhKVbteqm1U5SrwpPgwAAAA?rs=1&pid=ImgDetMain',
                imageBuilder: (context, imageProvider) => Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        newsModel.img,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            newsModel.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            newsModel.subTitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
