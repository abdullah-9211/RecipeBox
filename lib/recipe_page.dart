import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';

class RecipePage extends StatefulWidget {
  final List<String> ingredients;
  final String recipeName;
  final List<String> steps;

  @override
  State<RecipePage> createState() => _RecipePageState();

  RecipePage(this.ingredients, this.recipeName, this.steps);
}

class _RecipePageState extends State<RecipePage> {
  bool _showAllIngredients = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(top: headingPadding),
          child: Text(
            widget.recipeName,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Ingredients',
                style: subHeadingStyle,
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...widget.ingredients
                      .take(_showAllIngredients ? widget.ingredients.length : 3)
                      .map(
                        (ingredient) => Text(
                          '\u2022 $ingredient',
                          style: bodyStyle,
                        ),
                      ),
                  if (!_showAllIngredients)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _showAllIngredients = true;
                        });
                      },
                      child: const Text(
                        'See more...',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
