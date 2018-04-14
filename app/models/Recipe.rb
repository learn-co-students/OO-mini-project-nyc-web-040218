class Recipe
  attr_accessor :recipe_name
  @@all = []

  def initialize(recipe_name)
    @recipe_name = recipe_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    recipe_card_recipes = RecipeCard.all.map {|rc| rc.recipe}
    most_popular_recipe_name = recipe_card_recipes.max_by {|x| recipe_card_recipes.count(x)}
    self.all.select {|r| r.recipe_name == most_popular_recipe_name}
  end

  def users
    recipe_card_recipe_names = RecipeCard.all.select {|rc| rc.recipe == self.recipe_name}
    recipe_card_recipe_names.map {|rc| rc.user}
  end

  def ingredients
    recipe_ingredient_recipe_names = RecipeIngredient.all.select {|ri| ri.recipe == self.recipe_name}
    recipe_ingredient_recipe_names.map {|ri| ri.ingredient}
  end

  def allergens
    users_all = User.all.select {|u| u.name == self.users[0]}
    users_all[0].allergens
  end

  def add_ingredients(ingredients)
    ingredients.each {|i| RecipeIngredient.new(self, i)}
  end
  
end
