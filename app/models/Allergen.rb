class Allergen

  attr_reader :ingredient, :user

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
