class User
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    recipe_cards.map {|card| card.recipe}
  end

  def recipe_cards
    RecipeCard.all.select {|recipe_card| recipe_card.user == self}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select {|allergen| allergen.user == self}.map {|allergen| allergen.ingredient}
  end

  def top_three_recipes
    self.recipe_cards.sort {|obj1, obj2| obj1.rating <=> obj2.rating}.reverse.first(3)
  end

  def most_recent_recipe
    recipes.last
  end

end
