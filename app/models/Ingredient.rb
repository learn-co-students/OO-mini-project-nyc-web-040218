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

  def self.most_common_allergen
    allergen_a = Allergen.all.map do |allergen|
      allergen.ingredient
    end
    allergen_a.max_by {|ing| allergen_a.count(ing)}
  end

end
