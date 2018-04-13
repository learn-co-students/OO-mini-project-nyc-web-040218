class RecipeIngredient
    attr_reader :recipe, :ingredient
    
    def self.all
        ALL
    end

    ALL = []

    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient
        ALL.push(self)
    end

    def ingredient
        self.ingredient
    end

    def recipe
        self.recipe
    end

    # # # ADDITIONAL METHODS # # #
    def self.find_by_ingredient(ingredient)
        RecipeIngredient.all.select do |ri| #instance of RecipeIngredient
            ri.ingredient == ingredient
        end
    end

    def self.find_by_recipe(recipe) 
        RecipeIngredient.all.select do |ri| #instance of RecipeIngredient
            ri.recipe == recipe
        end
    end
end