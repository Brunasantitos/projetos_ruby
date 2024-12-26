#Capítulo 42
# Classe chamada de Animal
class Animal
end

# A classe Dog herda da classe Animal
class Dog < Animal

    def initialize(name)
    # variável que está no ponto de ser usada 
        @name = name
    end

    def to_s
        "#{@name}"
    end
end

# A classe Cat herda da classe Animal
class Cat < Animal

    def initialize(name)
    # método que está inicializando a variável name
        @name = name
    end

    def to_s
        "#{@name}"
    end
end

# declaração de uma classe chamada Person
class Person

    def initialize(name)
    # método de inicialização de uma variável
        @name = name

    ## Person has-a pet of some kind
        @pet = nil
    end

    attr_accessor :pet


end

#Classe Employee herda da classe Person
class Employee < Person

    def initialize(name, salary)
    # a função super, está chamando a declaração da variável name, assim não precisando declarar novamente 
        super(name)
    # declaração de uma variável que pode ser acessada dentro e fora da classe
        @salary = salary
    end

end

#declaração da classe Fish
class Fish
end

#A classe Salmon herda da classe Fish
class Salmon < Fish
end

#A casse Halibut herda da classe Fish
class Halibut < Fish
end


#Criando uma instância ques está sendo atribuida a classe Dog, com parâmetro
rover = Dog.new("Rover")

#Criando uma instância que está sendo atribuida a classe Cat, com parâmetro
satan = Cat.new("Satan")

#Criando uma instância ques está sendo atribuida a classe Person, com parâmetro
mary = Person.new("Mary")

#a instância já criada, está atribuindo um valor para a variável pet, mudando o comportamento da instância
puts mary.pet = satan

#é uma nova instância que está sendo atribuida para a classe Employee, co parâmretros
frank = Employee.new("Frank", 120000)

#a instância já criada, está atribuindo um valor para a variável pet
puts frank.pet = rover

#é uma nova instância criada, sendo atribuida para a classe Fish, sem parâmetro
flipper = Fish.new()

#é uma nova instância criada, sendo atribuida para a classe Salmon, sem parâmetro
crouse = Salmon.new()

#é uma nova instância criada, sendo atribuida para a classe Halibut, sem parâmetro
harry = Halibut.new()

