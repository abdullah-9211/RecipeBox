import 'Rating.dart';

class Recipe {
  String name;
  String bywho;
  List<String> ingredients;
  List<String> steps;
  Rating recipeRating;

  Recipe(
      this.name, this.bywho, this.ingredients, this.steps, this.recipeRating);
}
