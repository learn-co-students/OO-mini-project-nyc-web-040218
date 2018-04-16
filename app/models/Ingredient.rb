class Ingredient
  attr_reader :name
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
    Allergen.all.each do |ally|
      if hash[ally.ingredient_instance] == nil
        hash[ally.ingredient_instance] = 1
      else
        hash[ally.ingredient_instance] += 1
      end
    end
    hash.max_by{|k,v| v}[0]
  end
end
