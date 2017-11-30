require_relative '../config/environment.rb'

sebastian = User.new("Seb")
leslie = User.new("Leslie")

jambalaya = Recipe.new("Jambalaya")
bolognese = Recipe.new("Bolognese")

penicillin = Ingredient.new("Penicillin")
pork = Ingredient.new("Pork")

leslie.add_recipe_card(jambalaya)
leslie.add_recipe_card(bolognese)
sebastian.add_recipe_card(jambalaya)

sebastian.declare_allergen(penicillin)
sebastian.declare_allergen(pork)

bolognese.add_ingredients([pork])




binding.pry
