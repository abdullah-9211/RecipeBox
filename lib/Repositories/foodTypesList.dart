import 'package:flutter/material.dart';
import 'package:recipebox/Resources/card_content_main.dart';

List<CardContentMain> cardContentMain = [
  CardContentMain(
    'Pancakes',
    const AssetImage('images/blueberry_pancakes.jpeg'),
  ),
  CardContentMain(
    'Steaks',
    const AssetImage('images/steak_2.jpg'),
  ),
  CardContentMain(
    'Pastas',
    const AssetImage('images/fetuccine.jpeg'),
  ),
  CardContentMain(
    'Omelettes',
    const AssetImage('images/omelette.jpg'),
  ),
  CardContentMain(
    'Cakes',
    const AssetImage('images/chocolate_cake.jpeg'),
  ),
  CardContentMain(
    'Neharis',
    const AssetImage('images/chicken_nihari.jpeg'),
  ),
  CardContentMain(
    'Sandwiches',
    const AssetImage('images/club_sandwich.jpeg'),
  ),
  CardContentMain(
    'Burgers',
    const AssetImage('images/burger.jpeg'),
  ),
  CardContentMain(
    'Pizzas',
    const AssetImage('images/pizza.jpeg'),
  ),
];

List<CardContentMain> filterList(String query) {
  List<CardContentMain> filter = [];

  for (CardContentMain c in cardContentMain) {
    if ((c.type.toUpperCase()).contains(query.toUpperCase())) {
      filter.add(c);
    }
  }

  return filter;
}
