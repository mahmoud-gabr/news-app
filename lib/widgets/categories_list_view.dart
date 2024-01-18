import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categries = const [
    CategoryModel(
      categoryName: 'sports',
      imge: 'assets/images/sport.jpg',
    ),
    CategoryModel(
      imge: 'assets/images/health.avif',
      categoryName: 'health',
    ),
    CategoryModel(
      imge: 'assets/images/science.avif',
      categoryName: 'science',
    ),
    CategoryModel(
      imge: 'assets/images/entertaiment.avif',
      categoryName: 'entertainment',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categries.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categries[index],
            );
          }),
    );
  }
}
