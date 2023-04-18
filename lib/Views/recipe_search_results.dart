import 'package:flutter/material.dart';
import 'package:recipebox/Repositories/recipeFactory.dart';
import 'package:recipebox/Resources/foodTypeEnum.dart';

RecipeBank recipeBank = RecipeBank();

class RecipeResults extends StatelessWidget {
  String recipePageName;

  RecipeResults(this.recipePageName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 70, 10, 0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recipePageName,
                    style: const TextStyle(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.grey,
                      elevation: 0.0,
                    ),
                    child: const Icon(Icons.close, color: Colors.black),
                  ),
                ],
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              child: const Text(
                'search results',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            buildRecipe(),
          ],
        ),
      ),
    );
  }

  Widget buildRecipe() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
      ),
      itemBuilder: _itemBuilder,
      itemCount: recipeBank.getRecipes(getEnum(recipePageName)).length,
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
                image:
                    recipeBank.getRecipes(getEnum(recipePageName))[index].image,
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
                      text: recipeBank
                          .getRecipes(getEnum(recipePageName))[index]
                          .name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16.0,
                        wordSpacing: 1.5,
                      ),
                    ),
                    const TextSpan(text: '\n'),
                    TextSpan(
                      text: recipeBank
                          .getRecipes(getEnum(recipePageName))[index]
                          .bywho,
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
}
