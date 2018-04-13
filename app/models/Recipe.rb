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
      rec.recipe == self
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |ing|
      ing.recipe == self
    end
  end

  end

  def ingredients
    recipe_ingredients.map do |rec_ing|
      rec_ing.ingredient
    end
  end

  def ingredients_by_name
    ingredients.map do |ingredient|
      ingredient.name
    end
  end

  def users
    recipe_cards.map do |ele|
      ele.user
    end
  end

  def allergens
    Allergen.all.select do |ele|
      self.ingredient.include?(ele.ingredient)
    end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end
