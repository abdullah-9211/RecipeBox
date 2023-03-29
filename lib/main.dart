import 'package:flutter/material.dart';
import 'recipe_page.dart';
import 'recipeFactory.dart';

RecipeBank recipeBank = RecipeBank();

void main() => runApp(const RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipePage(recipeBank.getRecipe(0)),
    );
  }
}
