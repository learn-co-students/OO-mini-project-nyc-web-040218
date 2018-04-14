class Recipe
  attr_accessor :name, :ingredients
  @@all = []

  def initialize(name)
    @name = name
    @ingredients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select do |recipe_card_instance|
      recipe_card_instance.recipe_instance == self
    end.map do |recipe_card_instance|
      recipe_card_instance.user_instance
    end
  end

  def ingredients
    RecipeIngredient.all.select do |recipe_ingredient_instance|
      recipe_ingredient_instance.recipe_instance == self
    end.map do |recipe_ingredient_instance|
      recipe_ingredient_instance.ingredient_instance
    end
  end

  def self.most_popular
    hash = {}

    RecipeCard.all.each do |recipe_card_instance|
      if hash[recipe_card_instance.recipe_instance] == nil
        hash[recipe_card_instance.recipe_instance] = 1
      else
        hash[recipe_card_instance.recipe_instance] += 1
      end
    end

    hash.key(hash.values.max)
  end

  def add_ingredients(ingredient_instances)
    self.ingredients = ingredient_instances
  end

  def allergens
    Allergen.all.select do |allergen_instance|
      self.ingredients.include?(allergen_instance.ingredient_instance)
    end.map do |allergen_instance|
      allergen_instance.ingredient_instance.name
    end
  end

end
