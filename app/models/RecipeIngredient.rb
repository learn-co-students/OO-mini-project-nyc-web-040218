class RecipeIngredient

  attr_writer :recipe, :ingredient

  @@all = []

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all<<self
  end

  def self.all
    @@all
  end

end
