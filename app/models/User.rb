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

  def recipe_cards_by_rating
    hsh = {}
    all_recipe_cards.map {|el| hsh[el.rating] = el.recipe}
    hsh
  end

  def top_three_recipes
    a = recipe_cards_by_rating.hsh.sort_by {|key, val| key}
    a[0..3].map {|el| el[1]}
  end

  def recipe_cards_by_date
    hsh = {}
    all_recipe_cards.map {|el| hsh[el.date] = el.recipe}
    hsh
  end

  def most_recent_recipe
    recipe_cards_by_date.sort_by {|key, val| key}[-1]
  end

  def all_recipe_cards
    RecipeCard.all.select {|el| el.user == self}
  end

  def recipes
    all_recipe_cards.map {|el| el.recipe}
  end


end
