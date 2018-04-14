class Ingredient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    hash = {}

    Allergen.all.each do |allergen_instance|
      if hash[allergen_instance.ingredient_instance.name] == nil
        hash[allergen_instance.ingredient_instance.name] = 1
      else
        hash[allergen_instance.ingredient_instance.name] += 1
      end
    end

    hash.key(hash.values.max)
  end
end
