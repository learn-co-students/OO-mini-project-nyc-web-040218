

class RecipeCard

  attr_accessor :rating
  attr_reader :recipe, :user, :date
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
    self.all.map {|ele| ele.user}
  end

  def self.recipe_cards_by_rating
    hsh = {}
    self.all.each {|el| hsh[el.rating] = el}
    hsh
  end

  def self.recipe_cards_by_date
    hsh = {}
    self.all.each {|el| hsh[el.date] = el}
    hsh
  end

  def self.recipes
    self.all.map {|ele| ele.recipe}
  end

end
