require 'pry'
class Ingredient
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def self.most_common_allergen
    allergen_hash = Hash.new
    allergy_names = Allergen.all.map{|aller| aller.ingredient.name}
    allergy_names.each do |aller| #instance of an allergen
      allergen_hash[aller] = allergy_names.count(aller)
    end
    binding.pry
    return allergen_hash.sort_by{|k, v| v}.last[0]
  end
end
