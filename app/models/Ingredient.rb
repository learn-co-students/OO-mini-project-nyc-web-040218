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

