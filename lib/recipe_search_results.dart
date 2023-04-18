import 'package:flutter/material.dart';
import 'package:recipebox/dummydata.dart';

class RecipeResults extends StatelessWidget {
  final String recipePage = 'Pancakes';

  const RecipeResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 70, 10, 0),
                  width: double.infinity,
                  child: Text(
                    recipePage,
                    style: const TextStyle(fontSize: 27, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,),
                  width: double.infinity,
                  child: const Text('search results',
                      style: TextStyle(fontSize: 16, color: Colors.black),),
                ),
                buildRecipe(),
              ],
            ),
          ),
        );
    }
}

Widget buildRecipe() {
  return GridView.builder(
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 0.9,
    ),
    itemBuilder: _itemBuilder,
    itemCount: cardContent.length,
    physics: const NeverScrollableScrollPhysics(),
  );
}

Widget _itemBuilder(BuildContext context, int index) {
  return InkWell(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        child: Container(
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: cardContent[index].cardImage,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              color: Color(0x995A5A5A),
            ),
            padding: const EdgeInsets.fromLTRB(2.0, 78.0, 0.0, 0.0),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: cardContent[index].title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0,
                      wordSpacing: 1.5,
                    ),
                  ),
                  const TextSpan(text: '\n'),
                  TextSpan(
                    text: cardContent[index].cook,
                    style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white70,
                      fontSize: 12.0,
                      wordSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ),
    onTap: () {},
  );
}

