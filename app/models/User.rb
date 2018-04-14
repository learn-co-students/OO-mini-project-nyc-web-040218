class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe_instance, date, rating)
    RecipeCard.new(self, recipe_instance, date, rating)
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card_instance|
      recipe_card_instance.user_instance == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card_instance|
      recipe_card_instance.recipe_instance.name
    end
  end

  def top_three_recipes
    recipe_cards.sort_by do |recipe_card_instance|
      recipe_card_instance.rating
    end.map do |recipe_card_instance|
      recipe_card_instance.recipe_instance.name
    end[0..2]
  end

  def most_recent_recipe
    recipe_cards.sort_by do |recipe_card_instance|
      recipe_card_instance.date
    end.last.recipe_instance.name
  end

  def declare_allergen(ingredient_instance)
    Allergen.new(ingredient_instance, self)
  end

  def allergens
    Allergen.all.select do |allergen_instance|
      allergen_instance.user_instance == self
    end.map do |allergen_instance|
      allergen_instance.ingredient_instance.name
    end
  end


  def safe_recipes
    allergens_arr = allergens

    Recipe.all.select do |recipe_instance|
      ingredients = recipe_instance.ingredients.map do |ingredient_instance|
        ingredient_instance.name
      end

      ingredients.any? do |ingredient|
        !allergens_arr.include?(ingredient)
      end
    end.map do |recipe_instance|
      recipe_instance.name
    end
  end
end
