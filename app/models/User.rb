class User
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def add_recipe_card(recipe, entry="great", rating)
    new_rc = RecipeCard.new(self, recipe, entry, rating)
  end

  def declare_allergen(ingredient_inst)#Takes an argument of an ingredient instance
    #user_self = self #Stores user instance to a variable
    Allergen.new(ingredient_inst, self)
  end

  def allergens
    #self = self
    Allergen.all.select{|aller| aller.user == self ? aller : next}
  end

  def top_three_recipes
    sorted_by_rating = self.recipes.sort_by do |recipe|
      recipe.rating
    end
    sorted_by_rating[-3,3].reverse
  end

  def most_recent_recipe
    sorted_by_date = self.recipes.sort_by do |recipe|
      recipe.date
    end
    sorted_by_date[-1]
  end

  def safe_recipes
    allergies = self.allergens
    all_ingredients = Ingredient.all
    all_ingredients.delete_if{|i| allergies.include?(i)}.map {|i| i.name}
  end
end
