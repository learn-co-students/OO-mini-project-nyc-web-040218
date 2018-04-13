class User

  attr_reader :name, :allergens
  attr_accessor :recipes

  ALL = []

  def initialize(name)
    @name = name
    @recipes = []
    @allergens = []
    ALL << self
  end

  def self.all
    ALL
  end

  def recipes
    RecipeCard.all.select { |recipes|
      recipes.user == self
    }
  end

  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, rating, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    a = Allergen.all.select { |allergen| allergen.user == self}
    a.map {|allergen| allergens.allergen}
  end

  def top_three_recipes
    recipes.sort_by {|recipe| recipe.rating}[-3..-1]
  end

  def most_recent_recipe
    recipes.sort_by {|recipe| recipe.date}.last
  end

end
