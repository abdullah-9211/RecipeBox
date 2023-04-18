import 'package:flutter/material.dart';
import 'package:recipebox/Views/recipe_search_results.dart';

import 'Repositories/recipeFactory.dart';

RecipeBank recipeBank = RecipeBank();

void main() => runApp(const RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipeResults('Pancakes'),
    );
  }
}
