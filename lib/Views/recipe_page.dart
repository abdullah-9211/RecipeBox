import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:recipebox/Models/recipe.dart';

import '../Controllers/recipe_page_controller.dart';
import '../Resources/constants.dart';
import '../Resources/expandableList.dart';

RecipeController controller = RecipeController();

class RecipePage extends StatefulWidget {
  final Recipe recipe;

  @override
  State<RecipePage> createState() => _RecipePageState();

  const RecipePage(this.recipe, {super.key});
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEDCD),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: headingPadding),
          child: Text(
            widget.recipe.name,
            style: mainHeadingStyle,
          ),
        ),
        backgroundColor: const Color(0xFFFFEDCD),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 16.0, 10.0, 0.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: mainColor,
                elevation: 0.0,
              ),
              child: const Icon(Icons.close, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFFEDCD),
              ),
              child: Column(
                children: [
                  Row(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0.0),
                      child: Text(
                        "by ${widget.recipe.bywho}",
                        style: bodyStyle,
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      itemSize: 23.0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        //Update recipe rating in db
                      },
                    ),
                  ]),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: widget.recipe.image,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            iconSize: 30,
                            color: const Color(0xCC000000),
                            icon: const Icon(Icons.favorite)),
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: IconButton(
                              onPressed: () {},
                              iconSize: 30,
                              color: const Color(0xCC000000),
                              icon: const Icon(Icons.archive)),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: IconButton(
                              onPressed: () {},
                              color: const Color(0xCC000000),
                              iconSize: 30,
                              icon: const Icon(Icons.share)),
                        ),
                        IconButton(
                            onPressed: () {},
                            iconSize: 30,
                            color: const Color(0xCC000000),
                            icon: const Icon(Icons.check_box_outlined)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0x55808080),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: const Text(
                          'Ingredients',
                          style: subHeadingStyle,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 15,
                        indent: 40,
                        endIndent: 40,
                      ),
                      ExpandableList(
                          listOfItems: widget.recipe.ingredients,
                          show: controller.showAllIngredients),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: const Text(
                          'Instructions',
                          style: subHeadingStyle,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 15,
                        indent: 40,
                        endIndent: 40,
                      ),
                      const SizedBox(height: 10.0),
                      ExpandableList(
                          listOfItems: widget.recipe.steps,
                          show: controller.showAllSteps),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
