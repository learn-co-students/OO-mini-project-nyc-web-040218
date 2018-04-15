class User

  @@all = []


  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def recipes
    RecipeCard.all.select do |recipe_obj|
      recipe_obj.user == self
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen_obj|
      allergen_obj.user == self
    end
  end

  def top_three_recipes
    top_recipes = RecipeCard.all.select do |recipecard_obj|
      recipecard_obj.user == self
    end
    top_recipes[0..2]
  end

  def most_recent_recipe
  last_date = recipes.sort_by do |recipe_obj|
    recipe_obj.date
  end
    last_date.last
  end

end
