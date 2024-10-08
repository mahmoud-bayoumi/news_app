import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            padding: EdgeInsets.only(
                bottom: MediaQuery.sizeOf(context).width / 20,
                left: 10.w,
                right: 10.w),
            child: NewsWidget(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
