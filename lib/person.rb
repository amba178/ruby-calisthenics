class Person  
  def self.species
    "Homo Sapien"
  end
end

class Person  
  class << self
    def species
      "Homo Sapien"
    end
  end
end

class << Person  
  def species
    "Homo Sapien"
  end
end

Person.instance_eval do  
  def species
    "Homo Sapien"
  end
end

def Person.species  
  "Homo Sapien"
end  