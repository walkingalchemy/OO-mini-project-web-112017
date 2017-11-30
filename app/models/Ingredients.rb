class Ingredient
  attr_accessor :item
  @@all = []
  def initialize(item)
    @item = item
    @@all << self
  end

  def self.most_common_allergen
    allergen_count = {}
    Allergen.all.each do |allergen|
      if allergen_count.include?(allergen.ingredient)
        allergen_count[allergen.ingredient] += 1
      else
        allergen_count[allergen.ingredient] = 1
      end
    end
    allergen_count.max_by {|allergen, count| count}[0]
  end


  def self.all
    @@all
  end

end
