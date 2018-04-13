class User
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def declare_allergen(ingredient_inst)#Takes an argument of an ingredient instance
    user_self = self #Stores user instance to a variable
    Allergen.new(ingredient_inst, user_self)
  end

  def allergens
    user_self = self
    Allergen.all.select{|aller| aller.user == user_self ? aller : next}
  end

  # def list_allergens
  #   self.allergens
  # end
  #build out if there's time
end
