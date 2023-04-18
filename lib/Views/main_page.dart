import 'package:flutter/material.dart';
import 'package:recipebox/Repositories/foodTypesList.dart';
import 'package:recipebox/Resources/constants.dart';

class MainPage extends StatelessWidget {
  final String recipePage = 'Cheesus';

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                  margin: const EdgeInsets.only(top: 20),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white38,
                    radius: 35,
                    backgroundImage: AssetImage('images/final2.png'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 25, 20, 0),
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.centerRight,
                    child: const CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius: 30,
                      backgroundImage: AssetImage('images/img.png'),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
              width: double.infinity,
              child: Text(
                'Welcome $recipePage',
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: bodyFont),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const Divider(),
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
    itemCount: cardContentMain.length,
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
              image: cardContentMain[index].cardImage,
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
                    text: cardContentMain[index].type,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16.0,
                      wordSpacing: 1.5,
                    ),
                  ),
                  const TextSpan(text: '\n'),
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
