require "./mystuff.rb"

class MyStuff

    def initialize()
        @tangerine = "And now a thousand between"
    end

    attr_reader :tangerine #método que cria automaticamente um getter

    def apple()
         puts "Iam classy apples!"
    end
end
   


thing = MyStuff.new()
thing.apple()
puts thing.tangerine
