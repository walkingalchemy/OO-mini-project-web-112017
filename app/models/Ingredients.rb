class Ingredient
  attr_accessor :item
  @@all = []
  def initialize(item)
    @dish = item
    @@all << self
  end


  def self.all
    @@all
  end

end
