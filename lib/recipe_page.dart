import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipePage extends StatefulWidget {
  final List<String> ingredients;
  final String recipeName;
  final List<String> steps;
  final String byWho;

  @override
  State<RecipePage> createState() => _RecipePageState();

  RecipePage(this.ingredients, this.recipeName, this.steps, this.byWho);
}

class _RecipePageState extends State<RecipePage> {
  bool _showAllIngredients = false;
  bool _showAllSteps = false;

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
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 10.0, 0.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.close, color: Colors.black),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: mainColor,
                elevation: 0.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: [
                Container(
                  child: Text(
                    "by " + widget.byWho,
                    style: bodyStyle,
                  ),
                ),
                Container(
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    itemSize: 23.0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ]),
              SizedBox(
                height: 20.0,
              ),
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
              SizedBox(
                height: 20.0,
              ),
              const Text(
                'Instructions',
                style: subHeadingStyle,
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...widget.steps
                      .take(_showAllSteps ? widget.steps.length : 3)
                      .map(
                        (step) => Text(
                          '\u2022 $step',
                          style: bodyStyle,
                        ),
                      ),
                  if (!_showAllSteps)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _showAllSteps = true;
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
              SizedBox(
                height: 40.0,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset('images/pancakes.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
