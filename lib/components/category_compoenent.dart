import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return CategoryView(category: category.categoryName,);
          },
        ));
      },
      child: Container(
        height: 95,
        width: 170,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(category.image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
