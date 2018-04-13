require_relative '../config/environment.rb'

wheat = Ingredient.new("wheat")
onion = Ingredient.new("onion")
mud = Ingredient.new("mud")
paul = User.new("paul")
bob = User.new("bob")
mary = User.new("mary")
trudy = User.new("trudy")
Allergen.new(wheat, bob)
Allergen.new(wheat, mary)
Allergen.new(wheat, trudy)
Allergen.new(onion, paul)
Allergen.new(mud, bob)

binding.pry
