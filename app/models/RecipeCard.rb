

class RecipeCard

  attr_accessor :rating
  attr_reader :recipe, :user
  @@all = []

  def initialize(recipe, user, rating, date)
    @recipe = recipe
    @user = user
    @rating = rating
    @date = date
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

  def self.recipe_cards_by_rating
    hsh = {}
    self.all.each do |el|
      hsh[el.rating] = el
    end
  end

  def self.recipes
    self.all.map do |ele|
      ele.recipe
    end
  end

end
