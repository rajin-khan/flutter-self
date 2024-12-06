import 'package:flutter/material.dart';

import 'package:meals/data/dummy_data.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //sets the items in the grid
          crossAxisCount:
              2, //2 columns, as grid works top-bottom, cross axis is horizontal
          childAspectRatio: 3 / 2, //aspect ratio of each grid cell
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for(final category in availableCategories)
            CategoryGridItem(category: category)
        ],
      ),
    );
  }
}
