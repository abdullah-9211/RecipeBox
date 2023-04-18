import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:recipebox/Models/recipe.dart';

class FeedbackPage extends StatelessWidget {
  final Recipe recipe;

  const FeedbackPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEDCD),
      body: Center(
          child: SizedBox(
              width: 370,
              height: 770,
              child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // align children to the start
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                    ),
                    Row(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // align children to the start
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0), // add left padding
                                    child: Text(recipe.name,
                                        style: const TextStyle(fontSize: 30)),
                                  ),
                                  // exit button
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 50.0), // add left padding
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor: const Color(0xFFE6B980),
                                        elevation: 0.0,
                                      ),
                                      child: const Icon(Icons.close,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0), // add left padding
                                    child: Text("by ${recipe.bywho}",
                                        style: const TextStyle(fontSize: 20)),
                                  ),
                                  RatingBar.builder(
                                    initialRating:
                                        recipe.recipeRating.ratingNum,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    itemPadding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (double value) {},
                                  )
                                ],
                              ),
                            ])
                      ],
                    ),
                    Container(
                        width: 370,
                        height: 600,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        margin: const EdgeInsets.only(top: 60.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0,
                                        top: 10.0), // add left padding
                                    child: Text("Leave a Review",
                                        style: TextStyle(fontSize: 30)),
                                  ),
                                  // share button
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35.0,
                                        top: 10.0), // add left padding
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder(),
                                        backgroundColor:
                                            const Color(0xFFE6B980),
                                        elevation: 0.0,
                                      ),
                                      child: const Icon(Icons.share,
                                          color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 10.0), // add left padding
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  itemSize: 40.0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    //Update recipe rating in db
                                  },
                                ),
                              ),
                              Container(
                                width: 350,
                                height: 390,
                                /*decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                            ),*/
                                color: Colors.white,
                                margin: const EdgeInsets.only(
                                    top: 10.0, left: 10.0),
                                child: const TextField(
                                  maxLines: 20,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Review...',
                                    hintStyle: TextStyle(fontSize: 20),
                                    contentPadding:
                                        EdgeInsets.only(left: 10.0, top: 10.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 110.0, top: 10.0), // add left padding
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: const Color(0xFFE6B980),
                                    fixedSize: const Size(150, 50),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                  ),
                                  child: const Text("Submit",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                              ),
                            ]))
                  ]))),
    );
  }
}
