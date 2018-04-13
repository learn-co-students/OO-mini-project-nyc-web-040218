require_relative '../config/environment.rb'

pie = Recipe.new("pie")
cake = Recipe.new("cake")
pizza = Recipe.new("pizza")
noodles = Recipe.new("noodles")
salad = Recipe.new("salad")
burger = Recipe.new("burger")
stew = Recipe.new("stew")
steak = Recipe.new("steak")

alice = User.new("alice ")
bob = User.new("bob")
billy = User.new("billy")
ryan = User.new("ryan")
ian = User.new("ian")
natalie = User.new("natalie")
guy = User.new("guy")
mom = User.new("mom")
william = User.new("william")

card1 = RecipeCard.new(pie, alice, 1, 20180105)
card2 = RecipeCard.new(cake, bob, 2, 20180303)
RecipeCard.new(steak, billy, 3, 20180505)
RecipeCard.new(burger, guy, 4, 20180201)
RecipeCard.new(pizza, william, 5, 20180903)
RecipeCard.new(stew, ryan, 6, 20180503)
RecipeCard.new(salad, alice, 7, 20180801)

lettuce = Ingredient.new("lettuce")
tomato = Ingredient.new("tomato")
meat = Ingredient.new("meat")
carrot = Ingredient.new("carrot")
bread = Ingredient.new("bread")
pepperoni = Ingredient.new("pepperoni")
cheese = Ingredient.new("cheese")
egg = Ingredient.new("egg")
flour = Ingredient.new("flour")
fruit = Ingredient.new("fruit")
water = Ingredient.new("water")

all1 = Allergen.new(lettuce, billy)
all2 = Allergen.new(meat, alice)
Allergen.new(tomato, guy)
Allergen.new(bread, ryan)
Allergen.new(bread, ian)
Allergen.new(egg, ian)
Allergen.new(water, natalie)
Allergen.new(bread, mom)
Allergen.new(water, ian)
Allergen.new(pepperoni, ian)



recing1 = RecipeIngredient.new(lettuce, burger)
recing2 = RecipeIngredient.new(tomato, burger)
RecipeIngredient.new(meat, burger)
RecipeIngredient.new(bread, burger)
RecipeIngredient.new(meat, steak)
RecipeIngredient.new(meat, stew)
RecipeIngredient.new(flour, stew)
RecipeIngredient.new(meat, noodles)
RecipeIngredient.new(lettuce, salad)
RecipeIngredient.new(tomato, salad)
RecipeIngredient.new(carrot, salad)
RecipeIngredient.new(cheese, salad)



# recipe user rating date


binding.pry
