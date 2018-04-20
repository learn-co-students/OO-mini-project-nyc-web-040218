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
    RecipeCard.all.select {|user| user.recipe == self}
  end

  def self.most_popular
    self.all.sort_by {|recipe| recipe.users.size}.last
  end

  def ingredients
    #break this into two functions
    a = RecipeIngredient.all.select{|ingredient| ingredient.recipe == self}
    a.map {|ingredient| ingredient.ingredient}
  end

  def allergens
    a = Allergen.all.map {|allergen| allergen.ingredient}
    self.ingredients.select {|allergen| a.include? allergen}
  end

  def add_ingredients(ing_a)
    ing_a.map {|ing| RecipeIngredient.new(self, ing)}
  end


end
