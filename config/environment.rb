require 'bundler/setup'
Bundler.require
require_all 'app'


matt = User.new("Matt")
lane = User.new("Lane")

stew = Recipe.new("stew")
pie = Recipe.new("pie")
tart = Recipe.new("tart")
pizza = Recipe.new("pizza")
burrito = Recipe.new("Burrito")
fried_burrito = Recipe.new("Chimichanga")

lane.add_recipe_card(pie, "3423", 3)
lane.add_recipe_card(stew, "12321", 1)
lane.add_recipe_card(tart, "43543", 10)
lane.add_recipe_card(fried_burrito, "329842", 11)
lane.add_recipe_card(burrito, "32434", :sunglasses)
lane.add_recipe_card(pizza, "324", 7)
matt.add_recipe_card(pizza, "34253", 10)

crust = Ingredient.new("Crust")
pumpkin = Ingredient.new("Pumpkin")
cheese = Ingredient.new("cheese")
pumpkin_pie_1 = RecipeIngredient.new(pie, pumpkin)
pumpkin_pie_2 = RecipeIngredient.new(pie, crust)
pizza_pie = RecipeIngredient.new(pizza, cheese)
pizza_pie2 = RecipeIngredient.new(pizza, crust)

lane.declare_allergen(pumpkin)
lane.declare_allergen(cheese)
matt.declare_allergen(pumpkin)


binding.pry
true
