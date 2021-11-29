Dog=Class.new


p Dog.class
p Class.superclass
p Module.superclass
p Object.superclass

snoopy=Dog.new #синглтон метод с использованием имени объекта
def snoopy.alter_ego
    "Red Baron"
end
p snoopy.alter_ego
class << snoopy # доступ к метаклассу
    def alter_ego
      "Red Baron"
    end
end
p snoopy.alter_ego

#способы реализации методов класса

class Dog
    def self.closest_relative
      "wolf"
    end
  end
  
  class Dog
    class << self
      def closest_relative
        "wolf"
      end
    end
  end
  
  def Dog.closest_relative
    "wolf"
  end
  
  class << Dog
    def closest_relative
      "wolf"
    end
  end


class Object 
    def metaclass 
      class << self
        self
      end 
    end 
end

p snoopy.metaclass
p snoopy.metaclass.superclass
#поддеожка наследования метаклассов
class Mammal
    def self.warm_blooded?
      true
    end
  end
 module Dog_two
  class Dog < Mammal
    def self.closest_relative
      "wolf"
    end
  end
end
p Dog_two::Dog.closest_relative
p Dog_two::Dog.warm_blooded?