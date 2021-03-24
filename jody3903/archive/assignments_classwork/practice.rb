
#modules/inheritance practice code - March 8
module FlyingAnimal
    def fly!
      puts "#{@name} is flying!"
    end
  end
  class Animal # generic things that are true for all animals
    attr_reader :name
    def initialize(name)
      @name = name
    end
    def vocalize!
      puts sentence
    end
    private 
    def sentence
      "#{sound}! says #{@name}"
    end
  end
  class Dog < Animal
    private
    
    def sound
      "bark"
    end
  end
  class Cat < Animal
    private
    def sound
      "meow"
    end
  end
  class Bird < Animal
    include FlyingAnimal
    private
    
    def sound
      "squalk!"
    end
  end
  dog = Dog.new("sparky")
  dog.vocalize!
  cat = Cat.new("sphinx")
  cat.vocalize!
  bird = Bird.new("tweety")
  bird.vocalize!
  bird.fly!
  Collapse
  
  
  
  
  
  
  
  
  

