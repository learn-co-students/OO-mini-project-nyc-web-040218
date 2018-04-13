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
    #return the ingredient instance that the highest number of users are allergic to
    counter_hash = Allergen.all.each_with_object(Hash.new(0)) { |allergen,counts| counts[allergen.ingredient] += 1 }
    counter_hash.sort_by {|k,v| v}.last.first
  end
end
