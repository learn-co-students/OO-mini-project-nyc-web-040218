class RecipeIngredient
attr_accessor :recipe, :ingredient

ALL = []

    def initialize(recipe, ingredient)
        @recipe = recipe
        @ingredient = ingredient 
        ALL << self
    end

    def self.all
        ALL
    end




end





























# class RecipeIngredient #join

# attr_accessor :ingredient, :recipe

# @@all = []
    
#     def initialize(ingredient, recipe) #objects
#         @ingredient = ingredient 
#         @recipe = recipe
#         @@all << self
#     end 

#     def self.all 
#         @@all 
#     end

    
# end