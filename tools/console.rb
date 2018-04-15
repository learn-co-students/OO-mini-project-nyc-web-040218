require_relative '../config/environment.rb'


chicken_cutlets = Recipe.new("Chicken Cutlets")
lasagna = Recipe.new("Lasagna")
devil_eggs = Recipe.new("Devil Eggs")
meat_loaf = Recipe.new("Meatloaf")
penne_vodka = Recipe.new("Penne Vodka")
cheese_steak = Recipe.new("Cheese Steak")

john = User.new("John")
billy_bob = User.new("Billy Bob")
jones = User.new("Jones")
felipe = User.new("Felipe")
sean = User.new("Sean")

lettuce = Ingredient.new("Lettuce")
onion = Ingredient.new("Onion")
liver = Ingredient.new("Liver")
catnip = Ingredient.new("Catnip")
chicken = Ingredient.new("Chicken")
salsa = Ingredient.new("Salsa")
penne = Ingredient.new("Penne")

felipe_lettuce_allergen = Allergen.new(felipe, "Lettuce")
felipe_onion_allergen = Allergen.new(felipe, "Onion")
john_lettuce_allergen = Allergen.new(john, "Lettuce")
sean_lettuce_allergen = Allergen.new(sean, "Lettuce")
felipe_penne_allergen = Allergen.new(felipe, "Penne")

penne_vodka_info = RecipeIngredient.new(penne_vodka, penne)

yumyum = RecipeCard.new(felipe, penne_vodka, 2003, 3)

felipe.add_recipe_card(chicken_cutlets, 2001, 9)
felipe.add_recipe_card(lasagna, 2002, 8)
felipe.add_recipe_card(penne_vodka, 2003, 3)

billy_bob.add_recipe_card(meat_loaf, 2004, 6)

jones.add_recipe_card(meat_loaf, 1999, 8)

felipe.add_recipe_card(penne_vodka, 2013, 3)
felipe.add_recipe_card(cheese_steak, 2005, 3)

binding.pry
