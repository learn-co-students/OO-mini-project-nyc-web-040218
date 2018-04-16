class Allergen 
attr_accessor :user, :ingredient

ALL = []

    def initialize(user, ingredient)
        @user = user
        @ingredient = ingredient 
        ALL << self
    end

    def self.all
        ALL
    end
    

end




























# class Allergen #join class
# attr_accessor :ingredient, :user
# @@all = []    
    
#     def initialize(user, ingredient)
#         @ingredient = ingredient
#         @user = user
#         @@all << self
#     end 

#     def self.all
#         @@all
#     end
    
# end