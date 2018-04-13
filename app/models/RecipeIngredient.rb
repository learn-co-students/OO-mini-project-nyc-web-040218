

class RecipeIngredient

  attr_reader :ingredient, :recipe
  @@all = []

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end

  def self.recipes
    self.all.map {|el| el.recipe}
  end

  def self.ingredients
    self.all.map {|el| el.ingredient}
  end

end
