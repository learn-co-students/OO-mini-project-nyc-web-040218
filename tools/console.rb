require_relative '../config/environment.rb'
require 'pry'

# wheat = Ingredient.new("wheat")
# onion = Ingredient.new("onion")
# mud = Ingredient.new("mud")
# Allergen.new(wheat, "Bob")
# Allergen.new(wheat, "Mary")
# Allergen.new(wheat, "Trudy")
# Allergen.new(onion, "Bob")
# Allergen.new(mud, "Bob")

# # # SEEDERS FOR RECIPES, RECIPE INGREDIENTS, RECIPE CARD # # #

pbj = Recipe.new("pbj")
toast = Recipe.new("toast")
avocado_toast = Recipe.new("avocado toast")
pb_celery = Recipe.new("pb celery")

ingredients = [eggs, ]

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
