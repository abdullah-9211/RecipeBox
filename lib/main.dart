import 'package:flutter/material.dart';
import 'package:recipebox/Views/login_page.dart';
import 'package:recipebox/setup.dart';

void main() async {
  await setup();
  runApp(const RecipeBox());
}

class RecipeBox extends StatelessWidget {
  const RecipeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
