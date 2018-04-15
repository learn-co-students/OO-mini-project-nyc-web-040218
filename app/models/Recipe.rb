require 'pry'
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
    hash = {}
    Recipe.all.map do |recipe|
      hash[recipe.recipe_cards] = recipe.recipe_cards.count
    end
    answer_maybe = hash.max_by do |k, v|
      v
    end
    answer_maybe[0][0].recipe
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card_obj|
      recipe_card_obj.recipe == self
    end
  end

  def users
    RecipeCard.all.select do |recipe|
      self == recipe.recipe
        recipe.map do |recipe_obj|
          recipe_obj.recipe.name
        end
    end
  end

  def ingredients
    RecipeIngredient.all.select do |ingredient_obj|
      ingredient_obj.recipe = self
    end
  end

  def allergens
    all_allergens = Allergen.all.select do |allergen_obj|
      self.ingredients.include?(allergen_obj.ingredient)
    end
    all_allergens.map do |specific_allergen|
      specific_allergen.ingredient
    end
  end

  def add_ingredients(ingredients_array)
    ingredients_array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end







end
