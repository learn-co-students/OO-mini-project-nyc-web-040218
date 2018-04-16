class Ingredient

  attr_reader :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def array_allergens
    Allergen.all.select { |allergen| allergen.ingredient == self}
  end

  def allergens
    array_allergens.map {|allergen| allergen.ingredient}
  end

  def self.most_common_allergen
    self.all.sort_by {|ingredient| ingredient.allergens.size}.last
  end

end
