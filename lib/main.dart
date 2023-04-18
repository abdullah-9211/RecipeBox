import 'package:flutter/material.dart';
import 'recipe_feedback.dart';
import 'package:recipebox/Views/recipe_search_results.dart';
import 'Repositories/recipeFactory.dart';

RecipeBank recipeBank = RecipeBank();

void main() => runApp(const RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedbackPage(
        recipeName: "Sweet Pankcakes",
        recipeOwner: "Cheesus",
        rating: 4.5,),
    );
  }
}
