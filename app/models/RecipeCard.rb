class RecipeCard

  attr_accessor :rating, :date, :user
  attr_reader :recipe

  ALL = []

  def initialize(user, recipe, rating=nil, date=nil)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    ALL << self
  end

  def self.all
    ALL
  end

end
