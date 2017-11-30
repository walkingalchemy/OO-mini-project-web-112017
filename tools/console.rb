require_relative '../config/environment.rb'

sebastian = User.new("Seb")
leslie = User.new("Leslie")

jambalaya = Recipe.new("Jambalaya")
bolognese = Recipe.new("Bolognese")

leslie.add_recipe_card(jambalaya)



binding.pry
