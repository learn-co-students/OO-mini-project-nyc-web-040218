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
    RecipeCard.all.select { |user|
      user.recipe == self
    }
  end

  def self.most_popular
    self.all.sort_by {|recipe| recipe.users.size}.last
  end

  def ingredients
    #make this into 2 methods
    a = RecipeIngredient.all.select {|ingredient|
      ingredient.recipe == self
    }
    a.map {|ingredient| ingredient.ingredient}
  end

  def allergens
    a = Allergen.all.map {|allergen| allergen.ingredient}
    self.ingredients.select {|allergen| a.include? allergen}
  end

  def add_ingredients(ingredients_array)
    ingredients_array.map {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

end
