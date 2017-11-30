class Recipe
  attr_accessor :dish

  def initialize(dish)
    @dish = dish
  end

  def add_ingredients(ingredient_array)
    ingredient_array.map {|ingredient| RecipeIngredient.new(ingredient, self)}    
  end



  # def users
  #   RecipeCard.all.select {|recipe| recipe. == self}
  # end

end
