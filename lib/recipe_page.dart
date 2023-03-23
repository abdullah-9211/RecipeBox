import 'package:flutter/material.dart';
import 'constants.dart';
import 'recipe.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: headingPadding),
          child: Text(
            "Pancakes",
            style: mainHeadingStyle,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const <Widget>[
              Text(
                'Ingredients',
                style: subHeadingStyle,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
