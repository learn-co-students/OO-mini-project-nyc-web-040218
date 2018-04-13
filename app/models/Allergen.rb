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
    self.all.map do |ele|
      ele.user
    end
  end

  def self.ingredients
    self.all.map do |ele|
      ele.ingredient
    end
  end

  def self.allergen_by_popularity
    hsh = Hash.new(0)
    Allergen.all.each do |el|
      hsh[el.ingredient] += 1
    end
    hsh
  end

end
