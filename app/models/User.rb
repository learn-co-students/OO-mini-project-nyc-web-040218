class User
    attr_accessor :name, :recipes

    ALL = []

    def initialize(name) 
        @name = name 
        @recipes = recipes
        ALL << self 
    end

    def self.all
        ALL
    end

    def recipes
        a = RecipeCard.all.select do |recipe|
            recipe.user == self 
        end
        # a.map do |item|
        #     item.recipe 
        # end
        #recipes should return all of the recipes this user has recipe cards for
    end
    
    def add_recipe_card (recipe,date,rating)
        RecipeCard.new(self, recipe, date, rating)  
    end
    
    def declare_allergen (ingredient)
        Allergen.new(self, ingredient)
    end
    # User#declare_allergen should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
   
   def allergens ###?????
        a = Allergen.all.select do |user_ingr| 
            user_ingr.user == self
        end
            a.map do |ing| #binding.pry
                ing.ingredient 
                #.name
        end
   end 
    # User#allergens should return all of the ingredients this user is allergic to
    
    def top_three_recipes       
        a = recipes.sort_by do |i| 
            i.rating         
        end  
        a[-3..-1]
    end
    # User#top_three_recipes should return the top three highest rated recipes for this user.
    
    # def most_recent_recipe
    #     # Recipe.all.map do |recipe|
    #     #     recipe.last
    # end

    def most_recent_recipe
     recipes.sort_by do |i| 
            i.date
     end.last
    end 
    # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.


end




























# class User 

#     @@all =[] 

# attr_accessor :name 

#     def initialize(name)
#         @name = name
#         # @recipes = recipes
#         @@all << self 
#     end

#     def self.all
#         @@all
#     end

#     def recipes  
#       a = RecipeCard.all.select do |rec|
#         rec.user == self
#       end 
#         a.map do |user_rec|  
#              user_rec.recipe
#         end   
#     end 

#     def add_recipe_card(recipe, date, rating)
#         RecipeCard.new(self,recipe, date, rating)
#     end

#     def declare_allergen(ingredient)
#         Allergen.new(ingredient)
#     end

#     def allergens
#         Allergen.all.select do |user_ingredient|
#             user_ingredient.user == self
#           end  
#     end

#     def top_three_recipes 

#     end

#     def most_recent_recipe


#     end

# end
