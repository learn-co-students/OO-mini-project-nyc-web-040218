class Ingredient
    attr_accessor :name 

    ALL = []

    def initialize(name)
        @name = name
        ALL << self
    end

    def self.all
        ALL
    end

end





























# class Ingredient #crust #apples 

# attr_accessor :name 

# @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def self.most_common_allergen
#     end


# end

