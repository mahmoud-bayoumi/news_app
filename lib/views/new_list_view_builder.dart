import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({required this.category, super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!); 
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
                child: Text(
              'Oops Try Again Later!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );

    /*
   
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : NewsListView(
            articles: articles,
          );
   
   */
  }
}
