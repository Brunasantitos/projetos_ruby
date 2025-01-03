#o que é uma classe explícita?
#é quando a classe herda um método de outra classe que vocês criou

class Parent

    def override()
        puts "PARENT override()"
    end
end
  
class Child < Parent
    def override()
        puts "CHILD override()"
    end
end
  
dad = Parent.new()
son = Child.new()
  
dad.override()
son.override()