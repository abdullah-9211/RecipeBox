import 'package:flutter/material.dart';
import 'package:recipebox/Resources/foodTypeEnum.dart';

import 'Rating.dart';

class Recipe {
  String name;
  String bywho;
  List<String> ingredients;
  List<String> steps;
  Rating recipeRating;
  Image image;
  FoodType type;

  Recipe(this.name, this.bywho, this.ingredients, this.steps, this.recipeRating,
      this.image, this.type);
}
