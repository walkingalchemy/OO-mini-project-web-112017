class Recipe
  attr_accessor :dish
  @@all = []
  def initialize(dish)
    @dish = dish
    @@all << self
  end

  def add_ingredients(ingredient_array)
    ingredient_array.map {|ingredient| RecipeIngredient.new(ingredient, self)}
  end



  # def users
  #   RecipeCard.all.select {|recipe| recipe. == self}
  # end

  def self.all
    @@all
  end

end
