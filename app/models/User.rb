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

#check again
  def top_three_recipes
    hsh = {}
    all_recipe_cards.map do |el|
      hsh[el.rating] = el.recipe
    end
    hsh = hsh.sort_by {|key, val| key}
    hsh[0..3].map {|el| el[1]}



    # sorted = RecipeCard.recipe_cards_by_rating.sort_by {|k,v| k}
    # result = [sorted[-1][1].recipe, sorted[-2][1].recipe, sorted[-3][1].recipe]
  end

#check again
  def most_recent_recipe
    hsh = {}
    all_recipe_cards.map do |el|
      hsh[el.date] = el.recipe
    end
    hsh = hsh.sort_by {|key, val| key}
    hsh[-1]


    # sorted = RecipeCard.recipe_cards_by_rating.sort_by {|k,v| k}
    # result = sorted[0][1].recipe
  end

  def all_recipe_cards
    RecipeCard.all.select do |el|
      el.user == self
    end
  end

  def recipes
    all_recipe_cards.map {|el| el.recipe}
  end


end
