require "pry"

class User
  attr_accessor :name, :recipe
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    user_recipe_cards = RecipeCard.all.select {|rc| rc.user == self.name}
    user_recipe_cards.map {|rc| rc.recipe}
  end

  def add_recipe_card(recipe)
    new_recipe_card = RecipeCard.new(self, recipe)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select {|a| a.user == self.name}
  end

  def top_three_recipes
    user_recipe_cards = RecipeCard.all.select {|rc| rc.user == self.name}
    recipe_card_ratings = RecipeCard.all.map {|rc| rc.rating}
    top_three_ratings = recipe_card_ratings.sort.reverse.first(3)
    top_three_ratings.map do |rating|
      user_recipe_cards.select {|rc| rating == rc.rating}
    end
  end

  def most_recent_recipe
    user_recipe_cards = RecipeCard.all.select {|rc| rc.user == self.name}
    recipe_card_dates = RecipeCard.all.map {|rc| rc.date}
    most_recent_date = recipe_card_dates.sort.reverse.first
    # binding.pry
    user_recipe_cards.select {|rc| most_recent_date == rc.date}
  end

  # ** This method only returns the ratings, not the receipe cards.
  # def top_three_recipes
  #   tt = RecipeCard.all.map {|rc| rc.rating}
  #   tt.sort.reverse.first(3)
  # end

  # ** This method only returns the most recent date, not the receipe card.
  # def most_recent_recipe
  #   mr = RecipeCard.all.map {|rc| rc.date}
  #   mr.sort.reverse.first
  # end
  
end
