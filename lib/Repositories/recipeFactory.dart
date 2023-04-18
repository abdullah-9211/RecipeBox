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
      const AssetImage('images/pancakes.jpg'),
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
      const AssetImage('images/blueberry_pancakes.jpeg'),
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
      const AssetImage('images/protein_pancakes.jpg'),
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
      const AssetImage('images/steak_1.jpg'),
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
      const AssetImage('images/steak_2.jpg'),
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
      const AssetImage('images/steak_3.jpg'),
      FoodType.steaks,
    ),
    Recipe(
      'Chicken Lasagna',
      'Food Fusion',
      [
        'Oil 2 tbs',
        'Onion Chopped 2',
        'Garlic chopped 1 tbs',
        'Chicken Mince 1/2 kg',
        'Tomato Chopped 2',
        'Tomato ketchup 1/2 cup',
        'Salt 1 tsp',
        'Red chili Crushed 1 tsp',
        'Black pepper Crushed 1 tsp',
        'Dried oregano 1 tsp',
        'Tomato paste 2 tbs',
        'Chicken stock or water 1/2 cup',
        'Capsicum Chopped 1 cup',
        'Butter 2 tbs',
        'All-purpose flour 2 tbs',
        'Milk 2 & 1/2 cup',
        'Salt 1/2 tsp or to taste',
        'White pepper powder 1 tsp',
        'White sauce',
        'Lasagna sheets 12 boiled as per pack’s instructions',
        'Chicken filling',
        'Cheddar cheese 1 Cup or as required',
        'Mozzarella cheese 1 Cup or as required',
        'Dried oregano to sprinkle',
      ],
      [
        'In pan, add oil and onion (chopped) and garlic (chopped), sauté for 1-2 minutes.',
        'Add chicken mince and sauté until mince changes color.',
        'Add tomatoes (chopped), tomato ketchup and mix well.',
        'Add salt,red chili crushed,black pepper crushed,dried oregano,tomato paste and chicken stock or water,cook for 2-3 minutes.',
        'Add capsicum,mix and set aside.',
        'In pan, add butter and let it melt, add all-purpose flour and mix well. Gradually add milk and keep stirring and mix continuously.',
        'Add salt and white pepper powder and cook until sauce thickens.',
        'Grease baking dish with oil or butter, spread white sauce, cover it with lasagna sheets, add chicken filling then again pour white sauce, sprinkle cheddar cheese and mozzarella cheese.',
        'Repeat the same process.',
        'Sprinkle cheddar cheese, mozzarella cheese and dried oregano.',
        'Bake for 20-25 minutes at 180 C or until cheese is golden brown.',
        'Chicken lasagna is ready.',
      ],
      Rating(3.0, "Cheesy and delicious"),
      const AssetImage('images/lasagna.jpeg'),
      FoodType.pasta,
    ),
    Recipe(
      'Fettucine Alfredo',
      'Melissa Stadler',
      [
        '1 lb Fettuccine Pasta',
        '6 Tablespoons Butter',
        '1 Garlic Clove (minced)',
        '1 1/2 cups Heavy Cream',
        '1/4 teaspoon Salt',
        '1 1/4 cup Shredded Parmesan Cheese',
        '1/4 teaspoon Pepper',
        '2 Tablespoons Italian Parsley (optional)',
      ],
      [
        'In a large pot, heat water over high heat until boiling. Add salt to season the water. Once it is boiling, add fettuccine and cook according to package instructions.',
        'In a large skillet or pan, heat butter over medium heat. Add minced garlic and cook for 1 to 2 minutes. Stir in heavy cream.',
        'Let heavy cream reduce and cook for 5 to 8 minutes. Add half of the parmesan cheese to the mixture and whisk well until smooth. Keep over heat and whisk well until cheese is melted.',
        'Save some pasta water. The pasta water is full of flavor and can be used to thin out the sauce.',
        'Toss alfredo sauce with fettuccine pasta and add half of the parmesan cheese. Once it is tossed, garnish with the remaining parmesan cheese. Add a little pasta water if it needs to be thinned out.',
        'Garnish with Italian parsley, if so desired.',
      ],
      Rating(5.0, "Excellent recipe"),
      const AssetImage('images/fetuccine.jpeg'),
      FoodType.pasta,
    ),
    Recipe(
      'Red Velvet Cake',
      'Sally McKenney',
      [
        '3 cups (360g) cake flour (spooned & leveled)',
        '1 teaspoon baking soda',
        '2 Tablespoons (10g) unsweetened natural cocoa powder',
        '1/2 teaspoon salt',
        '1/2 cup (113g) unsalted butter, softened to room temperature',
        '2 cups (400g) granulated sugar',
        '1 cup (240ml) canola or vegetable oil',
        '4 large eggs, room temperature and separated',
        '1 Tablespoon pure vanilla extract',
        '1 teaspoon distilled white vinegar',
        'liquid or gel red food coloring',
        '1 cup (240ml) buttermilk, at room temperature',
      ],
      [
        'Preheat oven to 350°F (177°C). Grease two 9-inch cake pans, line with parchment paper rounds, then grease the parchment paper. Parchment paper helps the cakes seamlessly release from the pans.',
        'Whisk the flour, baking soda, cocoa powder, and salt together in a large bowl. Set aside.',
        'Using a handheld or stand mixer fitted with a paddle attachment, beat the butter and sugar together on medium-high speed until combined, about 1 minute.',
        'crape down the sides and up the bottom of the bowl with a rubber spatula as needed. Add the oil, egg yolks, vanilla extract, and vinegar and beat on high for 2 minutes.',
        'Scrape down the sides and up the bottom of the bowl with a rubber spatula as needed.',
        'With the mixer on low speed, add the dry ingredients in 2-3 additions alternating with the buttermilk.',
        'Beat in your desired amount of food coloring just until combined. I use 1-2 teaspoons gel food coloring.',
        'Vigorously whisk or beat the 4 egg whites on high speed until fluffy peaks form as pictured above, about 3 minutes. Gently fold into cake batter. The batter will be silky and slightly thick.',
        'Divide batter between cake pans. Bake for 30-32 minutes or until the tops of the cakes spring back when gently touched and a toothpick inserted in the center comes out clean.',
        'If the cakes need a little longer as determined by wet crumbs on the toothpick, bake for longer.',
        'However, careful not to overbake as the cakes may dry out. Remove cakes from the oven and cool completely in the pans set on a wire rack.',
        'The cakes must be completely cool before frosting and assembling.',
        'In a large bowl using a handheld or stand mixer fitted with a whisk or paddle attachment, beat the cream cheese and butter together on medium-high speed until smooth, about 2 minutes.',
        'Add the confectioners’ sugar, vanilla extract, and a pinch of salt. Beat on low speed for 30 seconds, then increase to high speed and beat for 3 minutes until completely combined and creamy.',
        'Add more confectioners’ sugar if frosting is too thin or an extra pinch of salt if frosting is too sweet.',
        'Using a large serrated knife, slice a thin layer off the tops of the cakes to create a flat surface. Discard or crumble over finished cake.',
        'Place 1 cake layer on your cake stand or serving plate. Evenly cover the top with frosting.',
        'Top with 2nd layer and spread remaining frosting all over the top and sides. I always use an icing spatula and bench scraper for the frosting.',
        'Refrigerate cake for at least 30-60 minutes before slicing. This helps the cake hold its shape when cutting.',
        'Cover leftover cake tightly and store in the refrigerator for 5 days. Frosted cake or unfrosted cake layers can be frozen up to 2-3 months.',
        'Thaw overnight in the refrigerator and bring to room temperature before decorating/serving.',
      ],
      Rating(4.0, "Perfect taste for a red velvet"),
      const AssetImage('images/red_velvet_cake.jpeg'),
      FoodType.cakes,
    ),
  ];

  Recipe getRecipe(int num) {
    return _recipes[num];
  }

  Recipe getRecipebyName(String name) {
    for (Recipe r in _recipes) {
      if (name == r.name) {
        return r;
      }
    }
    return _recipes[0];
  }

  List<Recipe> getRecipes(FoodType type) {
    List<Recipe> recipes = [];
    for (Recipe r in _recipes) {
      if (r.type == type) {
        recipes.add(r);
      }
    }
    return recipes;
  }
}
