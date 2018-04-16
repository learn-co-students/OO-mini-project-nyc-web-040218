class RecipeCard
attr_accessor :user, :recipe, :date, :rating

ALL = []

    def initialize (user, recipe, date, rating) #takes in user and recipe because it is a joint class for user and recipe
        @user = user
        @recipe = recipe
        @date = date 
        @rating = rating 
        ALL << self 
    end 

    def self.all
        ALL
    end

end




























# class RecipeCard #join class

# attr_accessor :recipe, :user, :date, :rating

#     ALL = []

#     def initialize(user, recipe, date, rating)
#         @recipe = recipe
#         @user = user
#         @date = date
#         @rating = rating
#         ALL << self
#     end

#     def self.all 
#         ALL
#     end

# end