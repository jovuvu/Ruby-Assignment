class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end
  
  def delicious?
    return true
  end
end

poo = Dessert.new("poo", 100)
puts poo.healthy?
puts poo.delicious?

class JellyBean < Dessert
  attr_accessor :name, :calories, :flavor
  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return false
    end
  end
end

beans = JellyBean.new("jellybean",10,"black licorice")
puts beans.healthy?()
puts beans.delicious?()
beans.flavor = "poo"
puts beans.delicious?()