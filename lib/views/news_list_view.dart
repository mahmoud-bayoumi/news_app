import 'package:flutter/material.dart';
import 'package:news_app/components/news_widget.dart';
import 'package:news_app/models/article_model.dart';

class NewsListView extends StatelessWidget {
  
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: NewsWidget(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
