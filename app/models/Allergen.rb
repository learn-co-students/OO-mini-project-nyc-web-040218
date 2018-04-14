class Allergen
  attr_accessor :ingredient_instance, :user_instance
  @@all = []

  def initialize(ingredient_instance, user_instance)
    @ingredient_instance = ingredient_instance
    @user_instance = user_instance
    @@all << self
  end

  def self.all
    @@all
  end
end
