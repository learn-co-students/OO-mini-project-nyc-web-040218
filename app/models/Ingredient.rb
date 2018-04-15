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

  def allergens
    a = Allergen.all.select { |allergen| allergen.ingredient == self}
    a.map {|allergen| allergen.ingredient}
  end

  def self.most_common_allergen
    self.all.sort_by {|ingredient| ingredient.allergens.size}.last
  end

end
