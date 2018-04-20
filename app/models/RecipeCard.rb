class RecipeCard

  attr_accessor :rating, :date

  attr_reader :user, :recipe

  ALL = []

  def initialize(user, recipe, rating = nil, date = nil)
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
