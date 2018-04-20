require_relative '../config/environment.rb'

jesse = User.new("Jesse")
gui = User.new("Gui")
ej = User.new("EJ")
ryan = User.new("Ryan")

tomato = Ingredient.new("Tomato")
pepper = Ingredient.new("Pepper")
pasta = Ingredient.new("Pasta")
olive_oil = Ingredient.new("Olvie Oil")
cheese = Ingredient.new("Cheese")
shrimp = Ingredient.new("Shrimp")
oregano = Ingredient.new("Oregano")
garlic = Ingredient.new("Garlic")
bread = Ingredient.new("Bread")
steak = Ingredient.new("Steak")
chicken = Ingredient.new("Chicken")
parm = Ingredient.new("Parm")

chicken_parm = Recipe.new("Chicken Parm")
surf_and_turf = Recipe.new("Surf and Turf")
shrimp_scampi = Recipe.new("Shrimp Scampi")
garlic_bread = Recipe.new("Garlic Bread")
basic_pasta = Recipe.new("Basic Pasta")


RecipeIngredient.new(chicken_parm, chicken)
RecipeIngredient.new(chicken_parm, parm)
RecipeIngredient.new(chicken_parm, tomato)
RecipeIngredient.new(chicken_parm, pasta)
####
RecipeIngredient.new(basic_pasta, pasta)
RecipeIngredient.new(basic_pasta, olive_oil)
RecipeIngredient.new(basic_pasta, garlic)
####
RecipeIngredient.new(garlic_bread, olive_oil)
RecipeIngredient.new(garlic_bread, garlic)
RecipeIngredient.new(garlic_bread, bread)
##
RecipeIngredient.new(surf_and_turf, shrimp)
RecipeIngredient.new(surf_and_turf, steak)

Allergen.new(jesse, shrimp)
Allergen.new(jesse, bread)
Allergen.new(gui, cheese)
Allergen.new(gui, chicken)

RecipeCard.new(jesse, chicken_parm, 4, 403)
RecipeCard.new(ej, chicken_parm, 5, 404)
RecipeCard.new(gui, basic_pasta, 5, 405)
RecipeCard.new(jesse, basic_pasta, 3, 406)
RecipeCard.new(gui, garlic_bread, 1, 107)
RecipeCard.new(jesse, garlic_bread, 5, 408)
RecipeCard.new(jesse, surf_and_turf, 2, 409)

# Recipe.all should return all of the recipe instances


binding.pry
