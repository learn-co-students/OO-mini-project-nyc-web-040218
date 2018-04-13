

class Allergens

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

end
