class User

  attr_reader :name, :allergens
  attr_accessor :recipes

  ALL = []

  def initialize(name)
    @name = name
    @recipes = []
    @allergens = []
    ALL << self
  end

  def self.all
    ALL
  end

  def recipes
    a = RecipeCard.all.select { |recipes|
      recipes.user == self
    }
    #RecipeCard.all.grep(:user=~self)
  end

  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, rating, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def all_user_allergens
    Allergen.all.select { |allergen| allergen.user == self}
    # a.map {|allergen| allergen.ingredient}
  end

  def allergens
    all_user_allergens.map {|allergen|allergen.ingredient}
  end

  def recipes_sorted_by_rating
    recipes.sort_by {|recipe| recipe.rating}
  end
  # => ['Surf and Turf', 'Shrimp Scampi','Chicken Parm', 'Basic Pasta', 'Garlic Bread']

  def top_three_recipes
    recipes_sorted_by_rating.reverse[0..2]
  end
  # => ['Chicken Parm', 'Basic_Pasta', 'Garlic_Bread']

  def least_favorite_recipe
    recipes_sorted_by_rating[0]
  end
  # => ['Surf and Turf']

  # def top_three_recipes
  #   recipes.sort_by {|recipe| recipe.rating}[-3..-1]
  # end
  # # => ['Chicken Parm', 'Basic_Pasta', 'Garlic_Bread']

  def most_recent_recipe
    recipes.sort_by {|recipe| recipe.date}.last
  end

end
