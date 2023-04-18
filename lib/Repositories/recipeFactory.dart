import 'package:flutter/material.dart';
import 'package:recipebox/Models/Rating.dart';
import 'package:recipebox/Resources/foodTypeEnum.dart';

import '../Models/recipe.dart';

class RecipeBank {
  final List<Recipe> _recipes = [
    Recipe(
      'Sweet Pancakes',
      'Tasty',
      ['4 Eggs', '80g Oats', '1 Banana', '1tsp Vanilla Essence', '1tbsp Milk'],
      [
        'Put banana in blender',
        'Pour in oats',
        'Crack eggs and put',
        'Add Vanilla Essence',
        'Add Milk',
        'Blend the Mixture',
        'Cook Mixture on low heat',
      ],
      Rating(3.5, "Excellent recipe."),
      Image.asset('images/pancakes.jpg'),
      FoodType.pancakes,
    ),
    Recipe(
      'Blueberry Pancakes',
      'Pinch of Yum',
      [
        '3/4 cup milk',
        '2 tbsp white vinegar',
        '1 cup flour',
        '2 tbsp sugar',
        '1 tsp baking powder',
        '1/2 tsp baking soda',
        '1 egg',
        '2 tbsp melted butter',
        '1+ cup fresh blueberries'
      ],
      [
        'Mix the milk and vinegar and let it sit for a minute or two',
        'Whisk the egg, milk, and melted butter into the dry ingredients until just combined.',
        'Heat a nonstick pan over medium heat. Melt a little smear of butter in the pan.',
        'Pour about 1/3 cup of batter into the hot skillet and spread it flat-like (it will be pretty thick). Arrange a few blueberries on top.',
        'Cook until you see little bubbles on top and the edges starting to firm up. Flip and cook for another 1-2 minutes until the pancakes are sky-high fluffy and cooked through.',
        'Serve with butter and maple syrup. But honestly, sometimes I just like to eat these plain. YUM, YUM, YUM.',
      ],
      Rating(4.0, "YUM YUM YUM."),
      Image.asset('images/blueberry_pancakes.jpeg'),
      FoodType.pancakes,
    ),
    Recipe(
      'Protein Pancakes',
      'BBC Good food',
      [
        '1 banana',
        '75g oats',
        '3 large eggs',
        '2 tbsp milk',
        '1 tbsp baking powder',
        'pinch of cinnamon',
        '2 tbsp protein powder',
        'nut butter, maple syrup and berries or sliced banana to serve',
      ],
      [
        'Whizz the banana, oats, eggs, milk, baking powder, cinnamon and protein powder in a blender for 1-2 mins until smooth.',
        'Check the oats have broken down, if not, blend for another minute.',
        'Heat a drizzle of oil in a pan. Pour or ladle in 2-3 rounds of batter, leaving a little space between each to spread.',
        'Cook for 1-2 minutes, until bubbles start to appear on the surface and the underside is golden. Flip over and cook for another minute until cooked through.',
        'Transfer to a warmed oven and repeat with the remaining batter.',
        'Serve in stacks with nut butter, maple syrup and fruit.',
      ],
      Rating(3.0, "Healthy and delicious."),
      Image.asset('images/protein_pancakes.jpg'),
      FoodType.pancakes,
    ),
    Recipe(
      'Steak Diane',
      'BBC Good food',
      [
        '2 fillet steaks (about 200g each), cut from the centre of the fillet',
        '25g butter',
        '1 thyme sprig',
        '1/2 tsp cracked black pepper',
        '1 large or 2 small shallots, peeled and finely chopped',
        '3 tbsp brandy',
        '2 tsp Dijion mustard',
        '1 tsp Worcestershire sauce',
        '200ml strong beef stock',
        '3 tbsp crème fraîche'
      ],
      [
        'Generously season the steaks all over with salt, then press them down slightly with the palm of your hand so they’re roughly the same thickness.',
        'Heat the butter in a heavy-based frying pan over a medium-high heat until foaming, then add the thyme so it crackles and sizzles.',
        'Add the steaks and use tongs to turn them every 1 min over the course of 6 mins (for very rare), 8 mins (rare) or 10 mins (medium). This helps build an even crust on both sides.',
        'Remove the steaks to a warm plate and leave to rest while you make the sauce.',
        'Scatter the pepper over the butter and thyme already in the pan. Toast for 1 min, then stir in the shallots and cook for another minute until they start to soften.',
        'Turn the heat up to high and tilt the pan so the side is against the flame ',
        'Reduce the heat to medium and stir in the mustard and Worcestershire sauce. Bubble for a minute, then pour in the stock.',
        'Bring to the boil and cook for 2 mins until reduced by half. Stir in the crème fraîche and simmer until rich and creamy.',
        'Taste and add more salt if needed.',
        'Scoop out the thyme sprig, then return the steaks and any juices to the pan, spooning the sauce over the steaks.',
        'Sprinkle over the tarragon, if using. Bring the steaks to the table in the pan and serve drizzled with more sauce.',
      ],
      Rating(5.0, "Scrumptious"),
      Image.asset('images/steak_1.jpg'),
      FoodType.steaks,
    ),
    Recipe(
      'Smoky steak with Cajun potatoes',
      'Esther Clark',
      [
        '430g Maris Piper potatoes, cut into 1.5cm chunks',
        '1 tbsp Cajun seasoning',
        '2 tbsp olive oil',
        '1 x 400g bavette steak',
        '1/4 small bunch of coriander, finely chopped'
      ],
      [
        'Heat the oven to 220C/200C fan/gas 7. Bring a large pan of salted water to the boil, add the potatoes and cook for 5 mins.',
        'Drain and leave to steam-dry in the colander for a few minutes.',
        'Toss the potatoes with the Cajun seasoning, half the oil and a good pinch of salt.',
        'Tip onto a baking tray and roast for 25-30 mins or until golden and crisp, tossing halfway through.',
        'Rub the steak with the remaining oil and season both sides. Heat a griddle pan or non-stick frying pan over a high heat until very hot.',
        'Add the steak to the pan, cook for 2 mins on one side, then 3 mins on the other.',
        'Remove, put on a chopping board, cover with foil and leave to rest for 5 mins. Slice into strips.',
        'Serve the steak with the potatoes scattered with the coriander',
      ],
      Rating(4.5, "Amazing taste"),
      Image.asset('images/steak_2.jpg'),
      FoodType.steaks,
    ),
    Recipe(
      'Simple sirloin steak',
      'Barney Desmazery',
      [
        '2 sirloin steaks, each about 200g and 2cm thick',
        '1 tbsp sunflower oil',
        '1 tbsp butter',
        '1 garlic clove, left whole but bashed once',
        'sprig of thyme or rosemary (optional)'
      ],
      [
        'Remove the steaks from the fridge about 30 mins before you plan to cook, so they’re closer to room temperature.',
        'Pat the steaks dry with kitchen paper, and season with salt and pepper. ',
        'Take a heavy-based frying pan that will comfortably fit both steaks, add the oil and heat over a high flame.',
        'When the oil is shimmering, turn the heat down to medium-high and add the butter.',
        'Once it’s sizzling, carefully lay the steaks in the pan, tucking the garlic and herbs in at the sides.',
        'With a pair of tongs, sear and turn the steaks every 30 secs to 1 min so they get a nice brown crust.',
        'As a rough guide, each steak will take 3 mins in total for rare, 4-5 mins in total for medium and 7-8 mins for well done.',
        'If you have a digital cooking thermometer, the middle of the steak should be 50C for rare, 60C for medium and 70C for well done.',
      ],
      Rating(2.5, "Could be more flavourish"),
      Image.asset('images/steak_3.jpg'),
      FoodType.steaks,
    ),
  ];

  Recipe getRecipe(int num) {
    return _recipes[num];
  }
}
