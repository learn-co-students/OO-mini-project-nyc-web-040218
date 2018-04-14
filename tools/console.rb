require_relative '../config/environment.rb'

#ADD-INGREDIENT
crust = Ingredient.new("crust")
apples = Ingredient.new("apples")
sugar = Ingredient.new("sugar")
#RECIPE-INGREDIENT
api1 = RecipeIngredient.new("pie", "crust")
api2 = RecipeIngredient.new("pie", "apples")
api3 = RecipeIngredient.new("pie", "sugar")
#RECIPECARD
joes_pie = RecipeCard.new("joe", "pie", 1999, 2)
joes_famous_apple = RecipeCard.new("joe", "pie", 2003, 5)
joe_dope_af_pie = RecipeCard.new("joe", "pie", 2001, 100000)
joe_burger = RecipeCard.new("joe", "burger", 2002, 4)
#RECIPE
pie = Recipe.new("pie")
burger = Recipe.new("burger")
#USER
joe = User.new("joe")
#ALLERGENS
sugar_allergy = Allergen.new("joe","sugar")
apple_allergy = Allergen.new("joe","apples")
gluten_intolerance = Allergen.new("joe","crust")

#METHODS
joe.most_recent_recipe

# pie.add_ingredients([sugar])
# pie.users

binding.pry
