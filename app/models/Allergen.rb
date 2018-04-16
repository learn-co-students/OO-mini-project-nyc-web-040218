class Allergen
  attr_reader :name, :recipe_instance, :user_instance
  attr_accessor :ingredient_instance
  @@all = []

  def initialize(user_instance, ingredient_instance)
    @user_instance = user_instance
    @ingredient_instance = ingredient_instance
    @@all << self
  end

  # def add_user(user)
  #   @user_instance << user
  # end

  def self.all
    @@all
  end
end
