import 'package:flutter/material.dart';
import 'package:recipebox/Views/login_page.dart';

import 'Repositories/recipeFactory.dart';

RecipeBank recipeBank = RecipeBank();

void main() => runApp(const RecipeBox());

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
