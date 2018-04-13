

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
    self.all.map do |ele|
      ele.recipe
    end
  end

  def self.ingredients
    self.all.map do |ele|
      ele.ingredient
    end
  end

end
