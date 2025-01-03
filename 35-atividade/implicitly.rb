#capítulo 44
#o que é herança implícita?
#quando criamos uma classe, ela herda aumomaticamente métodos da classe Kernel, String
#exemplo do livro
class Parent
    def implicit()
      puts "PARENT implicit()"
    end
end
  
class Child < Parent
end
  
dad = Parent.new()
son = Child.new()
  
dad.implicit()
son.implicit()

