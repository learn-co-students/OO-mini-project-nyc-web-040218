class Recipe

  attr_reader :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def users
    RecipeCard.all.select { |user| user.recipe == self}
  end

  def self.most_popular
    self.all.sort_by {|recipe| recipe.users.size}.last
  end

  def array_ingredients #helper method
    RecipeIngredient.all.select {|ingredient| ingredient.recipe == self}
  end

  def ingredients
    array_ingredients.map {|ingredient| ingredient.ingredient}
  end

  def self.all_allergens #helper method
    Allergen.all.map {|allergen| allergen.ingredient}
  end

  def allergens
    self.ingredients.select {|allergen| Recipe.all_allergens.include? allergen}
  end

  def add_ingredients(ingredients_array)
    ingredients_array.map {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

end
