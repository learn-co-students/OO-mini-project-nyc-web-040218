class User

  # attr_accessor :recipes, :allergens
  attr_reader :name


  ALL = []

  def initialize(name)
    #use uniq names
    @name = name
    # @recipes = []
    # @allergens = []
    ALL << self
  end

  def self.all
    ALL
  end

  def recipes
    RecipeCard.all.select {|recipe| recipe.user == self}
  end

  def add_recipe_card(recipe_o, date_s, rating_i)
    RecipeCard.new(self, recipe_o, rating_i, date_s)
  end

  def declare_allergen(ing_o)
    Allergen.new(self, ing_o)
  end

  def allergens
    a = Allergen.all.select {|allergen| allergen.user == self}
    a.map {|allergen| allergen.ingredient}
  end

  def top_three_recipies
    recipes.sort_by{|recipe| recipe.rating}[-3..-1]
  end

  def most_recent_recipe
    recipes.sort_by{|recipe| recipe.date}.last
  end

end
