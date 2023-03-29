// ignore_for_file: file_names

import 'recipe.dart';

class RecipeBank {
  final List<Recipe> _recipes = [
    Recipe('Sweet Pancakes', 'Tasty', [
      '4 Eggs',
      '80g Oats',
      '1 Banana',
      '1tsp Vanilla Essence',
      '1tbsp Milk'
    ], [
      'Put banana in blender',
      'Pour in oats',
      'Crack eggs and put',
      'Add Vanilla Essence',
      'Add Milk',
      'Blend the Mixture',
      'Cook Mixture on low heat'
    ]),
  ];

  Recipe getRecipe(int num) {
    return _recipes[num];
  }
}
