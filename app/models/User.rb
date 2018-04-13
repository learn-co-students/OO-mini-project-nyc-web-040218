class User
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user_instance == self
    end.map{|rc| rc.recipe_instance}
  end

  def add_recipe_card(recipe_instance, date, rating)
    new_card = RecipeCard.new(recipe_instance, self, date, rating)
  end

  def declare_allergen(ingredient_instance)
    Allergen.new(self, ingredient_instance)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user_instance == self
    end.map{|combo| combo.ingredient_instance}
  end

  def top_three_recipes
    RecipeCard.all.select do |recipe_card|
      recipe_card.user_instance == self
    end.sort!{|a,b| b.rating <=> a.rating}[0..2]
  end

  def most_recent_recipe
    RecipeCard.all.select do |recipe_card|
      recipe_card.user_instance == self
    end.sort!{|a,b| b.date <=> a.date}.first
  end

  def self.all
    @@all
  end

  # BONUS
  # def safe_recipes
  #   arr = []
  #   RecipeIngredients.all.each do |ri|
  #     self.allergens.each do |aly|
  #       if ri.ingredient_instances.include?(aly)
  #       else
  #         arr << ri
  #       end
  #     end
  #   end
  #   arr
  # end

end
