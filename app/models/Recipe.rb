class Recipe
attr_accessor :name, :ingredients

ALL = []

    def initialize(name)
        @name = name
        @ingredients = ingredients
        ALL << self
    end

    def self.all 
        ALL
    end
    # Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)   
    
    
    
    def self.most_popular 
        self.all.map do |recipe| 
        end   
    end

    def users
       m = RecipeCard.all.select do |user_recipe|  
            user_recipe.recipe == self
        end  
        m.map do |s|
            s.user
        end   
    end
 # Recipe#users should return the user instances who have recipe cards with this recipe
   
    def ingredients 
        a = RecipeIngredient.all.select do |recipe_ing|
            recipe_ing.recipe == self        
        end
            a.map do |ing|
                ing.ingredient 
            end
    end
 # Recipe#ingredients should return all of the ingredients in this recipe


    def allergens
        #self.ingredients #ingredients method 
        self.ingredients.select do |item| 
            Allergen.all.include?(item)
             item
        end
    end
    # Recipe#allergens should return all of the ingredients in this recipe that are allergens

    def add_ingredients(array)
        array.map do |item| 
            RecipeIngredient.new(self,item) 
        end
    end
# Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

end
