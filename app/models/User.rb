class User
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def add_recipe_card(recipe)
    RecipeCard.new(recipe, self)
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def recipes
    RecipeCard.all.select {|recipe| recipe.user == self}
  end

  def allergens
    Allergen.all.select {|ingredient| ingredient.user == self}
  end

  def most_recent_recipe
    self.recipes.last
  end


  def self.all
    @@all
  end



end
