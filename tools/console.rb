require_relative '../config/environment.rb'

james_comey = User.new("James Comey")
donald_trump = User.new("Donald Trump")
michael_cohen = User.new("Michael Cohen")
robert_mueller = User.new("Robert Mueller")

biriyani = Recipe.new("Biriyani")
dhal_rice = Recipe.new("Dhal Rice")
khel_smoothie = Recipe.new("Khel Smoothie")

james_comey.add_recipe_card(biriyani, 2017, 100)
donald_trump.add_recipe_card(dhal_rice, 2010, 50)
michael_cohen.add_recipe_card(khel_smoothie, 2011, 85)
michael_cohen.add_recipe_card(dhal_rice, 2008, 10)
donald_trump.add_recipe_card(biriyani, 2009, 95)

butter = Ingredient.new("butter")
rice = Ingredient.new("rice")
dhal = Ingredient.new("dhal")
khel = Ingredient.new("khel")
cardamon = Ingredient.new("cardamom")

biriyani.add_ingredients([butter, rice, cardamon])
dhal_rice.add_ingredients([rice, butter, dhal])
khel_smoothie.add_ingredients([khel])

james_comey.declare_allergen(khel)
donald_trump.declare_allergen(khel)
michael_cohen.declare_allergen(cardamon)
michael_cohen.declare_allergen(butter)

RecipeIngredient.new(biriyani, butter)
RecipeIngredient.new(biriyani, rice)
RecipeIngredient.new(dhal_rice, rice)
RecipeIngredient.new(dhal_rice, dhal)
RecipeIngredient.new(khel_smoothie, khel)
RecipeIngredient.new(biriyani, cardamon)


binding.pry
"hello"
