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
    by_count = Allergen.allergen_by_popularity
    by_count.max_by {|k,v| v}
  end

end
