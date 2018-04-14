class Ingredient
  attr_accessor :ingredient_name
  @@all = []
  
  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    allergen_ingredients = Allergen.all.map {|a| a.ingredient}
    allergen_ingredients.max_by {|x| allergen_ingredients.count(x)}
  end

end
