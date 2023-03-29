import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RecipePage extends StatefulWidget {
  final List<String> ingredients;
  final String recipeName;
  final List<String> steps;
  final String byWho;

  @override
  State<RecipePage> createState() => _RecipePageState();

  const RecipePage(this.ingredients, this.recipeName, this.steps, this.byWho, {super.key});
}

class _RecipePageState extends State<RecipePage> {
  bool _showAllIngredients = false;
  bool _showAllSteps = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEDCD),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: headingPadding),
          child: Text(
            widget.recipeName,
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
                  Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0.0),
                          child: Text(
                            "by ${widget.byWho}",
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
                          },
                        ),
                      ]),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.asset('images/pancakes.jpg'),
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
                          child: IconButton(onPressed: () {},
                              color: const Color(0xCC000000),
                              iconSize: 30,
                              icon: const Icon(Icons.share)),
                        ),

                        IconButton(onPressed: () {},
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
                        margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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
                      Container(
                        margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ...widget.ingredients
                                .take(_showAllIngredients ? widget.ingredients.length : 0)
                                .map(
                                  (ingredient) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 4, right: 8),
                                      child: Icon(Icons.double_arrow, size: 20),
                                    ),
                                    Expanded(
                                      child: Text(
                                        ingredient,
                                        style: bodyStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (!_showAllIngredients)
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showAllIngredients = true;
                                  });
                                }, icon: const Icon(Icons.add),
                              ),
                            if (_showAllIngredients)
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showAllIngredients = false;
                                  });
                                }, icon: const Icon(Icons.remove),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
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
                      Container(
                        margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ...widget.steps
                                .take(_showAllSteps ? widget.steps.length : 0)
                                .map(
                                  (step) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 4, right: 8),
                                      child: Icon(Icons.double_arrow, size: 20),
                                    ),
                                    Expanded(
                                      child: Text(
                                        step,
                                        style: bodyStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (!_showAllSteps)
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showAllSteps = true;
                                  });
                                }, icon: const Icon(Icons.add),
                              ),
                            if (_showAllSteps)
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _showAllSteps = false;
                                  });
                                }, icon: const Icon(Icons.remove),
                              ),
                          ],
                        ),
                      ),

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