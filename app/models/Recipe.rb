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
    RecipeCard.all.select {|rec| rec.recipe == self}
  end

  def recipe_ingredients
    RecipeIngredient.all.select {|ing| ing.recipe == self}
  end


  def ingredients
    recipe_ingredients.map {|rec_ing| rec_ing.ingredient}
  end

  def ingredients_by_name
    ingredients.map {|ingredient| ingredient.name}
  end

  def users
    recipe_cards.map {|el| el.user}
  end

  def all_allergens
    Allergen.all.select {|el| self.ingredients.include?(el.ingredient)}
  end

  def allergens
    all_allergens.map {|el| el.ingredient}
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each {|ingredient| RecipeIngredient.new(ingredient, self)}
  end

end
