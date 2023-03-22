import 'package:flutter/material.dart';
import 'recipe_page.dart';

void main() => runApp(RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: RecipePage(),
    );
  }
}
