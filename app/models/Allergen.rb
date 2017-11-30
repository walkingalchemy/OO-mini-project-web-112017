class Allergen

  @@all = []

  attr_accessor :ingredient, :user

  def initialize(ingredient, user)
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end


end
