require_relative '../config/environment.rb'

# #recipe
pie = Recipe.new("apple pie")
pizza = Recipe.new("pizza")
ramen = Recipe.new("ramen")
oatmeal = Recipe.new("oatmeal")
spaghetti = Recipe.new("spaghetti")
stirrfry = Recipe.new("stirr fry")

#user 
ej = User.new("EJ")
ed = User.new("ED")
roger = User.new("ROGER")

#RecipeCard
rc1 = RecipeCard.new(ed,pie,20180204, 5)
# rc2 = RecipeCard.new(e,pie,2018/07/13, 10)
rc3 = RecipeCard.new(roger,pizza,20180713, 10)
rc5 = RecipeCard.new(ed,ramen,20180222, 9)

rc4 = RecipeCard.new(ej,pizza,20180130, 10)
rc6 = RecipeCard.new(ej,pie,20180713, 6)
rc6 = RecipeCard.new(ej,spaghetti,20180413, 10)
rc6 = RecipeCard.new(ej,oatmeal,20180710, 8)
rc6 = RecipeCard.new(ej,ramen,20180712, 7)

# #ingredient
crust = Ingredient.new("crust")
apples = Ingredient.new("apples")
sugar = Ingredient.new("sugar")
cin = Ingredient.new("cinnamon")
salt= Ingredient.new("salt") 
van= Ingredient.new("Vanilla") 
honey= Ingredient.new("honey")
oats = Ingredient.new("oats")
noodles = Ingredient.new("pasta noodles")
chicken = Ingredient.new("chicken")
mushroom = Ingredient.new("mushroom")


#recipeingredient
ri1 = RecipeIngredient.new(oatmeal, oats)
ri2 = RecipeIngredient.new(spaghetti, noodles) 
ri3 = RecipeIngredient.new(stirrfry, chicken)
ri4 = RecipeIngredient.new(pizza, crust)
ri5 = RecipeIngredient.new(pie, apples)
ri6 = RecipeIngredient.new(pie, crust)
ri7 = RecipeIngredient.new(pie, sugar)
ri8 = RecipeIngredient.new(ramen, noodles)


# #allergen
allergen_crust = Allergen.new(ej, crust)
allergen_cin = Allergen.new(ej, cin)
allergen_salt = Allergen.new(ej, salt)

apples = Allergen.new(ed, apples)
sugar = Allergen.new(ed, sugar)




# ej.recipes
# pie.ingredients
# pizza.users
# ej.add_recipe_card(pie,51292,5)
# ej.declare_allergen(crust)
# # ej.allergens
# # ed.allergens
# # ej.top_three_recipes
# # pie.ingredients
# # ed.allergens
# # pie.allergens
# ej.allergens
# ej.top_three_recipes
# ej.most_recent_recipe

binding.pry
puts "hi"

