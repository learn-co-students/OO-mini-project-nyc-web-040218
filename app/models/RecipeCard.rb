class RecipeCard
    attr_reader :user, :recipe, :date
    attr_accessor :entry, :rating

    ALL = []

    def self.all
        ALL
    end

    def initialize(user, recipe, entry="This is great", rating=0)
        @user = user
        @recipe = recipe
        @date = Time.now.strftime("%m/%d/%Y") #Googled this. Returns time of instantiation as mm/dd/yy
        @entry = entry
        @rating = rating
        ALL.push(self)
    end

    def rate
        puts "Rate this Recipe from 1-10!"
        @rating = gets.chomp.to_i
    end
end