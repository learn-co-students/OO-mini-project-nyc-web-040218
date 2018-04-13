class Allergen

  attr_reader :ingredient, :user
  @@all = []

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def self.users
    self.all.map {|el| el.user}
  end

  def self.ingredients
    self.all.map {|el| el.ingredient}
  end

  def self.allergen_by_popularity
    hsh = Hash.new(0)
    Allergen.all.each {|el| hsh[el.ingredient] += 1}
    hsh
  end

end
