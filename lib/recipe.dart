class Recipe{
 String _name;
 List<String> _ingredients;
 List<String> _steps;

 Recipe(this._name, this._ingredients, this._steps);

 String get name => _name;

  set name(String value) {
    _name = value;
  }

 List<String> get ingredients => _ingredients;

 List<String> get steps => _steps;

  set steps(List<String> value) {
    _steps = value;
  }

  set ingredients(List<String> value) {
    _ingredients = value;
  }
}