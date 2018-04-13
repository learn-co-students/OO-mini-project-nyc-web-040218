class Recipe
    attr_reader :name
    ALL = []

    def initialize(name)
        @name = name
        ALL.push(self)
    end

    def self.all
        ALL
    end

### METHODS USING RecipeCard
    def get_recipe_cards # Helper method to get all Recipe Card instances where recipe = self
        RecipeCard.all.select do |rc|
            rc.recipe == self
        end
    end

    def self.most_popular #not yet tested
        popular_hash = Hash.new 0
        RecipeCard.all.each do |rc|
            popular_hash[rc] += 1
        end
        popular_hash.sort_by{|k,v| v}.last[0].recipe
    end

    def users
        get_recipe_cards.map do |rc|
            rc.user
        end
    end

### METHODS USING RecipeIngredients
    def get_recipe_ingredients # Helper method to get all RecipeIngredient instances where recipe = self
        RecipeIngredient.all.select do |ri|
            ri.recipe == self
        end
    end

    def ingredients
        get_recipe_ingredients.map do |ri|
            ri.ingredient
        end
    end

    def add_ingredients(ingredients_array)
        new_ing = ingredients_array + self.get_recipe_ingredients
        new_ing.uniq!
    end

# # # PLEASE FILL OUT THIS METHOD # # #
    def allergens 
        Allergen.all.select {|a| ingredients.include?(a.ingredient)}
    end
# # # PLEASE FILL OUT THIS METHOD # # #
end