class Recipe
attr_reader :name
@@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def users
    RecipeCard.all.select {|card| card.recipe==self}.map {|card| card.user}
  end

  def dish_name
    Recipe.all.map {|dish| dish.name}
  end

  def self.most_popular
    #should return the recipe instance with the highest number of users
    #(the recipe that has the most recipe cards)
    counter_hash = RecipeCard.all.each_with_object(Hash.new(0)) { |card,counts| counts[card.recipe] += 1 }
    counter_hash.sort_by {|k,v| v}.last.first
  end

  def ingredients
    RecipeIngredient.all.select {|obj| obj.recipe == self}.map {|card| card.ingredient}
  end

  def allergens
    #return all of the ingredients in this recipe that are allergens
    ingredients.map do |ingredient|
      Allergen.all.select {|allergen| allergen.ingredient == ingredient}
    end.flatten
  end

  def add_ingredients(ingredients_array)
    ingredients_array.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end
