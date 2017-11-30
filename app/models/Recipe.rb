class Recipe
  attr_accessor :dish
  @@all = []
  def initialize(dish)
    @dish = dish
    @@all << self
  end

  def add_ingredients(ingredient_array)
    ingredient_array.map {|ingredient| RecipeIngredient.new(self, ingredient)}
  end

  def ingredients
    RecipeIngredient.all.select do |use|
      use.recipe == self
    end.map do |use|
      use.ingredient
    end
  end

  def allergens
    self.ingredients.select do |ingredient|
      Allergen.all.map do |allergen|
        allergen.ingredient
      end.include?(ingredient)
    end
  end

  def users
    RecipeCard.all.select do |card|
      card.recipe == self
    end.map do |card|
      card.user
    end.uniq
  end



  def self.most_popular
    users_count = {}
    RecipeCard.all.each do |card|
      if users_count[card.recipe]
        users_count[card.recipe] += 1
      else
        users_count[card.recipe] = 1
      end
    end
    users_count.max_by {|recipe, count| count}[0]
  end

  def self.all
    @@all
  end

end
