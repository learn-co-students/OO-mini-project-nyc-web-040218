class RecipeIngredients
  attr_accessor :ingredient_instances, :recipe_instance, :name
  @@all = []

  def initialize(recipe_instance)
    @recipe_instance = recipe_instance
    @ingredient_instances = []
    @@all << self
  end

  def add_ingredient(ingredient)
    @ingredient_instances << ingredient
  end

  def self.all
    @@all
  end


end
