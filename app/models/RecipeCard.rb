class RecipeCard
  @@all = []

  attr_accessor :recipe, :user, :date, :rating
  def initialize(recipe, date, rating, user)
    @recipe = recipe
    @date = date
    @rating = rating
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end



end
