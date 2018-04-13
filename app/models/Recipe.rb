
class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    RecipeCard.recipe_cards_by_rating.max_by {|k,v| k}
  end

  def recipe_cards
    RecipeCard.all.select do |rec|
      rec.recipe = self
    end
  end

  def users
    recipe_cards.map do |ele|
      ele.user
    end
  end

end
