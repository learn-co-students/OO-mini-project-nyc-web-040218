require_relative '../config/environment.rb'
require 'pry'

paul = User.new("paul")
bob = User.new("bob")
mary = User.new("mary")
trudy = User.new("trudy")

avo_i = Ingredient.new("avocado")
pb_i = Ingredient.new("pb")
j_i = Ingredient.new("jelly")
butter_i = Ingredient.new("butter")
hot_sauce_i = Ingredient.new("hot sauce")
lemon_juice_i = Ingredient.new("lem juice")
dragon_fruit_i = Ingredient.new("dragon fruit")
egg_yolk_i = Ingredient.new("egg yolk")
whiskey_i = Ingredient.new("Whiskey")

avo_toast_list = [avo_i, lemon_juice_i]
prairie_oyster_list = [egg_yolk_i, hot_sauce_i, whiskey_i]
pbj_list = [pb_i, j_i]
ks_list = Ingredient.all
pb_list = [pb_i]

avo_toast_r = Recipe.new("Avocado Toast")
pbj_r = Recipe.new("Peanut Butter Jelly Sandwich")
pb_r = Recipe.new("PB Sammich")
ks_r = Recipe.new("Kitchen Sink")
prairie_oyster_r = Recipe.new("Prairie_oyster")

marys_avo_toast_rc = RecipeCard.new(mary, avo_toast_r, "Must Have AvoT", 7)
trudys_avo_toast_rc = RecipeCard.new(trudy, avo_toast_r, "Sick AT Bruh")
bobs_avo_toast_rc = RecipeCard.new(bob, avo_toast_r)
pauls_pbj_rc = RecipeCard.new(paul, pbj_r, "Most difficult sammy ever", 10)
pauls_poyst_rc = RecipeCard.new(paul, prairie_oyster_r, "Best Hangover Cure", 2)
marys_pbj_rc = RecipeCard.new(mary, pbj_r, "You will never guess")
pauls_ks_rc = RecipeCard.new(paul, ks_r, "This was disgusting. Would eat again", 9)
pauls_avo_toast_rc = RecipeCard.new(paul, avo_toast_r, "Huh", 5)

avo_ri = RecipeIngredient.new(avo_toast_r, avo_toast_list)
poyst_ri = RecipeIngredient.new(prairie_oyster_r, prairie_oyster_list)
pbj_ri = RecipeIngredient.new(pbj_r, pbj_list)
pb_ri = RecipeIngredient.new(pb_r, pb_list)
ks_ri = RecipeIngredient.new(ks_r, ks_list)

al1 = Allergen.new(avo_i, mary)
al2 = Allergen.new(lemon_juice_i, mary)
al3 = Allergen.new(butter_i, bob)
al4 = Allergen.new(dragon_fruit_i, paul)
al5 = Allergen.new(whiskey_i, trudy)
al6 = Allergen.new(pb_i, bob)

binding.pry
true