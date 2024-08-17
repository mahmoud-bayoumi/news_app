import 'package:flutter/material.dart';
import 'package:news_app/views/category_list_view.dart';
import 'package:news_app/views/new_list_view_builder.dart';

class NewsView extends StatelessWidget {
  final String category; 
  const NewsView({super.key , required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'News',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'Cloud',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            )),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
             const SliverToBoxAdapter(child: CategoryListView()),
             const SliverToBoxAdapter(
                child: SizedBox(
                  height: 22,
                ),
              ),
              NewsListViewBuilder(
                category: category,
              ),
            ],
          ),
        ));
  }
}
