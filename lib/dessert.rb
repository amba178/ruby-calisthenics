class Dessert
  attr_accessor :name, :calories 
  def initialize(name, calories)
    @name = name
    @calories = calories 
  end

  def healthy?
    calories < 200 ?  true : false 
  end
  def delicious?
    true 
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
  end
end
