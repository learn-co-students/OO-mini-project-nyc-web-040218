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

    def self.most_popular
        popular_hash = {}
        get_recipe_cards.each do |rc|
            popular_hash[rc] += 1
        end
        popular_hash.sort_by{|k,v| v}.last[0]
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
        ingredients_array.map do |ing|
            new_ri = RecipeIngredient.new(self, ing)
        end
    end

# # # PLEASE FILL OUT THIS METHOD # # #
    def allergens
        # should return all of the ingredients in this recipe that are allergens
        # You can use 
    end
# # # PLEASE FILL OUT THIS METHOD # # #
end