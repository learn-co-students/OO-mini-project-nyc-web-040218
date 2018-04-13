class Recipe
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def ingredients
    RecipeIngredients.all.select do |ri|
      ri.recipe_instance == self
    end.map{|ri| ri.ingredient_instances}
  end

  def self.most_popular
    # WHAT HAPPENS IF THERE IS A TIE?
    hash = {}
    RecipeCard.all.each do |recipe_card|
      if hash[recipe_card.recipe_instance] == nil
        hash[recipe_card.recipe_instance] = 1
      else
        hash[recipe_card.recipe_instance] += 1
      end
    end
    hash.max_by{|k,v| v}[0]
  end

  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe_instance == self
    end.map{|card| card.user_instance}.uniq
  end

  def allergens
    arr = []
    self.ingredients.first.each do |ing|
      Allergen.all.each do |allergen|
        if allergen.ingredient_instance == ing
          arr << ing
        end
      end
    end
    arr
  end

  def add_ingredients(ingredients_arr)
    # new_RI = RecipeIngredients.new(self)
    RecipeIngredients.all.select do |ri|
      ri.recipe_instance == self
    end.each{ |ri| ingredients_arr.each{ |ing| ri.ingredient_instances << ing } }
  end

  def self.all
    @@all
  end
end
