enum FoodType {
  pancakes,
  steaks,
  pasta,
  omelette,
  cakes,
  neharis,
  sandwiches,
  burgers,
  pizzas
}

String getName(FoodType type) {
  if (type == FoodType.pancakes) {
    return 'Pancakes';
  } else if (type == FoodType.steaks) {
    return 'Steaks';
  } else if (type == FoodType.pasta) {
    return 'Pastas';
  } else if (type == FoodType.omelette) {
    return 'Omelettes';
  } else if (type == FoodType.cakes) {
    return 'Cakes';
  } else if (type == FoodType.neharis) {
    return 'Neharis';
  } else if (type == FoodType.sandwiches) {
    return 'Sandwiches';
  } else if (type == FoodType.burgers) {
    return 'Burgers';
  } else if (type == FoodType.pizzas) {
    return 'Pizzas';
  }

  return 'ha';
}
