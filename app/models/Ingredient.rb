class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
# should return the ingredient instance that the highest number of users are allergic to
  allergen_people_count = Hash.new(0)
    Allergen.all.each do |allergen_object|
      allergen_people_count[allergen_object.ingredient] += 1
    end
    final_answer = allergen_people_count.max_by do |k, v|
      v
    end
    final_answer[0]
  end

end
