require_relative '../config/environment.rb'
# require_relative '../bin/test.rb'

user1 = User.new("User1")
user2 = User.new("User2")
user3 = User.new("User3")
user4 = User.new("User4")

#
lasagna = Recipe.new("Lasagna")
arrozgandules = Recipe.new("Arroz con Gandules")
pizza = Recipe.new("Pizza")
biriyani = Recipe.new("Biriyani")
#
tomato_sauce = Ingredient.new("Tomato Sauce")
cheese = Ingredient.new("Cheese")
rice = Ingredient.new("Rice")
butter = Ingredient.new("Butter")
beans = Ingredient.new("Beans")
groundbeef = Ingredient.new("Ground Beef")
dough = Ingredient.new("Dough")

user1.declare_allergen(butter)
user1.declare_allergen(beans)
user2.declare_allergen(cheese)
user3.declare_allergen(dough)
user2.declare_allergen(dough)

RecipeIngredients.new(lasagna)
lasagna.add_ingredients([tomato_sauce, cheese, groundbeef])
RecipeIngredients.new(arrozgandules)
arrozgandules.add_ingredients([rice, beans])
RecipeIngredients.new(pizza)
pizza.add_ingredients([tomato_sauce, dough, cheese])
RecipeIngredients.new(biriyani)
biriyani.add_ingredients([rice, butter])

user1.add_recipe_card(lasagna, 2005, 5)
user1.add_recipe_card(biriyani, 2018, 10)
user3.add_recipe_card(biriyani, 2018, 10)
user2.add_recipe_card(biriyani, 2018, 10)
user1.add_recipe_card(pizza, 1918, 2)
user1.add_recipe_card(pizza, 1118, 3)
user3.add_recipe_card(pizza, 1884, 2)


binding.pry
"hi"
