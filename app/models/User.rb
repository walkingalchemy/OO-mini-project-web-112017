class User
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def safe_recipes
    Recipe.all.reject do |recipe|
      recipe.ingredients.any? do |ingredient|
        allergens.include?(ingredient)
      end
    end
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, date, rating, self)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def recipes
    RecipeCard.all.select {|recipe| recipe.user == self}
  end

  def allergens
    Allergen.all.select {|ingredient| ingredient.user == self}.map do |allergen|
      allergen.ingredient
    end
  end

  def most_recent_recipe
    self.recipes.sort_by do |recipe|
      recipe.date
    end.last
  end

  def top_three_recipes
    self.recipes.sort_by do |recipe|
      recipe.rating
    end.last(3).reverse
  end


  def self.all
    @@all
  end



end
