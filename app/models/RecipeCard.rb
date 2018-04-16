require 'date'

class RecipeCard
  attr_reader :recipe_instance, :user_instance
  attr_accessor :rating, :name, :date
  @@all = []

  def initialize(recipe_instance, user_instance, date, rating)
    @recipe_instance = recipe_instance
    @user_instance = user_instance
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end
