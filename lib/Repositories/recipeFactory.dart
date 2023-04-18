import 'package:flutter/material.dart';
import 'package:recipebox/Models/Rating.dart';
import 'package:recipebox/Resources/foodTypeEnum.dart';

import '../Models/recipe.dart';

class RecipeBank {
  final List<Recipe> _recipes = [
    Recipe(
      'Sweet Pancakes',
      'Tasty',
      ['4 Eggs', '80g Oats', '1 Banana', '1tsp Vanilla Essence', '1tbsp Milk'],
      [
        'Put banana in blender',
        'Pour in oats',
        'Crack eggs and put',
        'Add Vanilla Essence',
        'Add Milk',
        'Blend the Mixture',
        'Cook Mixture on low heat',
      ],
      Rating(3.5, "Excellent recipe."),
      Image.asset('images/pancakes.jpg'),
      FoodType.pancakes,
    ),
    Recipe(
      'Blueberry Pancakes',
      'Pinch of Yum',
      [
        '3/4 cup milk',
        '2 tbsp white vinegar',
        '1 cup flour',
        '2 tbsp sugar',
        '1 tsp baking powder',
        '1/2 tsp baking soda',
        '1 egg',
        '2 tbsp melted butter',
        '1+ cup fresh blueberries'
      ],
      [
        'Mix the milk and vinegar and let it sit for a minute or two',
        'Whisk the egg, milk, and melted butter into the dry ingredients until just combined.',
        'Heat a nonstick pan over medium heat. Melt a little smear of butter in the pan.',
        'Pour about 1/3 cup of batter into the hot skillet and spread it flat-like (it will be pretty thick). Arrange a few blueberries on top.',
        'Cook until you see little bubbles on top and the edges starting to firm up. Flip and cook for another 1-2 minutes until the pancakes are sky-high fluffy and cooked through.',
        'Serve with butter and maple syrup. But honestly, sometimes I just like to eat these plain. YUM, YUM, YUM.',
      ],
      Rating(4.0, "YUM YUM YUM."),
      Image.asset('images/blueberry_pancakes.jpeg'),
      FoodType.pancakes,
    ),
  ];

  Recipe getRecipe(int num) {
    return _recipes[num];
  }
}
