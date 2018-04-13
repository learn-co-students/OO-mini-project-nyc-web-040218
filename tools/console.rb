require_relative '../config/environment.rb'

jesse = User.new("Jesse")
gui = User.new("Gui")
ej = User.new("EJ")
ryan = User.new("Ryan")

tomato = Ingredient.new("Tomato")
pepper = Ingredient.new("Pepper")
pasta = Ingredient.new("Pasta")
olive_oil = Ingredient.new("Olive Oil")
cheese = Ingredient.new("Cheese")
shrimp = Ingredient.new("Shrimp")
oregano = Ingredient.new("Oregano")
garlic = Ingredient.new("Garlic")
bread = Ingredient.new("Bread")
steak = Ingredient.new("Steak")
chicken = Ingredient.new("Chicken")
parm = Ingredient.new("Parm")

chick_parm = Recipe.new("Chicken Parm")
surfnturf = Recipe.new("Surf and Turf")
shrimp_scamp = Recipe.new("Shrimp Scampi")
garlic_bread = Recipe.new("Garlic Bread")
basic_pasta = Recipe.new("Basic Pasta")

RecipeIngredient.new(chick_parm, chicken)
RecipeIngredient.new(chick_parm, parm)
RecipeIngredient.new(chick_parm, tomato)
RecipeIngredient.new(chick_parm, pasta)

RecipeIngredient.new(basic_pasta, pasta)
RecipeIngredient.new(basic_pasta, olive_oil)
RecipeIngredient.new(basic_pasta, garlic)

RecipeIngredient.new(garlic_bread, garlic)
RecipeIngredient.new(garlic_bread, olive_oil)
RecipeIngredient.new(garlic_bread, bread)

RecipeIngredient.new(surfnturf, shrimp)
RecipeIngredient.new(surfnturf, steak)

Allergen.new(jesse, shrimp)
Allergen.new(jesse, bread)
Allergen.new(gui, chicken)
Allergen.new(gui, cheese)
Allergen.new(ryan, parm)

RecipeCard.new(jesse, chick_parm, 4, 20180403)
RecipeCard.new(ej, chick_parm, 5, 20180404)
RecipeCard.new(gui, basic_pasta, 5, 20180405)
RecipeCard.new(gui, garlic_bread, 1, 20180406)
RecipeCard.new(jesse, basic_pasta, 5, 20180407)
RecipeCard.new(jesse, garlic_bread, 5, 20180408)
RecipeCard.new(jesse, surfnturf, 2, 20180409)


binding.pry
