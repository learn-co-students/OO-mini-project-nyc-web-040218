class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, rating, date)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    a = Allergen.all.select {|el| el.user == self }
    a.map {|el| el.ingredient}
  end

  def top_three_recipes
    sorted = RecipeCards.recipe_cards_by_rating.sort_by {|k,v| k}
    result = [sorted[0][1].recipe, sorted[1][1].recipe, sorted[2][1].recipe]
  end

  def most_recent_recipe
    sorted = RecipeCards.recipe_cards_by_rating.sort_by {|k,v| k}
    result = sorted[0][1].recipe
  end

end
