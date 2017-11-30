class RecipeCard
  @@all = []

  attr_accessor :recipe, :user
  def initialize(recipe, user)
    @recipe = recipe
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end



end
