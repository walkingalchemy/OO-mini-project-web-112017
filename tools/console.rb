require_relative '../config/environment.rb'

sebastian = User.new("Seb")
leslie = User.new("Leslie")

jambalaya = Recipe.new("Jambalaya")
bolognese = Recipe.new("Bolognese")
snickerdoodles = Recipe.new("Snickerdoodle Cookies")
chicken_soup = Recipe.new("Chicken Soup")
fish_taco = Recipe.new("Fish Taco")

penicillin = Ingredient.new("Penicillin")
pork = Ingredient.new("Pork")
gluten = Ingredient.new("Gluten")
peanuts = Ingredient.new("Peanuts")

leslie.add_recipe_card(jambalaya, 20171110, 1000000)
leslie.add_recipe_card(bolognese, 20161111, 1000001)
leslie.add_recipe_card(chicken_soup, 20161109, 90000)
leslie.add_recipe_card(fish_taco, 20171225, -45500)
leslie.add_recipe_card(snickerdoodles, 20171112, 2)
sebastian.add_recipe_card(jambalaya, 20140215, 9990909)

sebastian.declare_allergen(penicillin)
sebastian.declare_allergen(gluten)
sebastian.declare_allergen(peanuts)
# sebastian.declare_allergen(pork)
leslie.declare_allergen(peanuts)

bolognese.add_ingredients([pork, penicillin])
# bolognese.add_ingredients([penicillin])
fish_taco.add_ingredients([gluten])
chicken_soup.add_ingredients([peanuts])
jambalaya.add_ingredients([pork])
snickerdoodles.add_ingredients([gluten, peanuts])




binding.pry
