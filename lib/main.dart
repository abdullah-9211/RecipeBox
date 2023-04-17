import 'package:flutter/material.dart';
import 'package:recipebox/recipe_search_results.dart';
import 'recipe_page.dart';
import 'recipeFactory.dart';

RecipeBank recipeBank = RecipeBank();

void main() => runApp(const RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RecipeResults(),
    );
  }
}
