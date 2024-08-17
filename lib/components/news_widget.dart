import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/webView.dart';

class NewsWidget extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsWidget({super.key, required this.articleModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Webview(uri: articleModel.url)));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image ??
                  'https://www.shutterstock.com/image-vector/error-500-page-empty-symbol-260nw-1711106146.jpg',
              height: 195,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            articleModel.description ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.w500, color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
