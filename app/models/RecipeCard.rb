class RecipeCard
  attr_accessor :user_instance, :recipe_instance, :date, :rating
  @@all = []

  def initialize(user_instance, recipe_instance, date, rating)
    @user_instance = user_instance
    @recipe_instance = recipe_instance
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
