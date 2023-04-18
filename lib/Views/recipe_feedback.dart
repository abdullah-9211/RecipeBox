import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:recipebox/Models/recipe.dart';
import 'package:recipebox/Resources/constants.dart';

class FeedbackPage extends StatelessWidget {
  final Recipe recipe;

  const FeedbackPage({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // align children to the start
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // align children to the start
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 20),
                          child: Text(recipe.name, style: mainHeadingStyle),
                        ),
                        // exit button
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: const Color(0xFFE6B980),
                              elevation: 0.0,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                            ), // add left padding
                            child: Text("by ${recipe.bywho}",
                                style: const TextStyle(fontSize: 20)),
                          ),
                          RatingBar.builder(
                            initialRating: recipe.recipeRating.ratingNum,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20.0,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (double value) {},
                          )
                        ],
                      ),
                    ),
                  ]),
              const Divider(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  color: const Color(0xFFFFEDCD),
                  elevation: 15.0,

                  // width: MediaQuery.of(context).size.width * 0.9,
                  // height: 600,
                  // decoration: BoxDecoration(
                  //     color: const Color(0xFFFFEDCD),
                  //     border: Border.all(color: Colors.black)),
                  // margin: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Leave a Review", style: subHeadingStyle),
                          // share button
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: const Color(0xFFE6B980),
                              elevation: 0.0,
                            ),
                            child: const Icon(Icons.share, color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            itemSize: 30.0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              //Update recipe rating in db
                              recipe.recipeRating.ratingNum = rating;
                            },
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 400,
                        color: Colors.white,
                        margin: const EdgeInsets.all(20),
                        child: const TextField(
                          maxLines: 20,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Review...',
                            hintStyle: bodyStyle,
                            contentPadding: EdgeInsets.all(12.0),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFE6B980),
                                fixedSize: const Size(150, 50),
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              child: const Text("Submit", style: bodyStyle),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
