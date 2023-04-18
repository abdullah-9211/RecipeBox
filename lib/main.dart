import 'package:flutter/material.dart';

import 'Repositories/recipeFactory.dart';
import 'Views/recipe_page.dart';

RecipeBank recipeBank = RecipeBank();

void main() => runApp(const RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(
        recipeBank.getRecipe(8),
      ),
    );
  }
}
