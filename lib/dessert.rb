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
    @flavor = flavor 
    super("#{flavor} jelly bean", 5)
  end

  def delicious?
    @flavor=='licorice' ? false : super 
  end


end
