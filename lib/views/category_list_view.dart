import 'package:flutter/material.dart';
import 'package:news_app/components/category_compoenent.dart';
import 'package:news_app/models/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  // ignore: non_constant_identifier_names
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryName: 'Business', image: 'assets/images/business.png'),
    CategoryModel(
        categoryName: 'Entertainment', image: 'assets/images/entertaiment.png'),
    CategoryModel(categoryName: 'General', image: 'assets/images/general.png'),
    CategoryModel(categoryName: 'Health', image: 'assets/images/health.png'),
    CategoryModel(categoryName: 'Science', image: 'assets/images/science.png'),
    CategoryModel(categoryName: 'Sports', image: 'assets/images/sports.png'),
    CategoryModel(
        categoryName: 'Technology', image: 'assets/images/technology.png')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CategoryCard(category: categories[index]),
          );
        },
      ),
    );
  }
}
