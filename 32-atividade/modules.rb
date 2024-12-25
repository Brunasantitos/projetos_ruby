require "./mystuff.rb"

module MyStuff

    def MyStuff.apple()
        puts "Apple here"
    end

    TANGERINE = "Living reflectioin of a dream"
end

MyStuff.apple()
puts MyStuff::TANGERINE #operador para acessar uma constante em uma classe ou módulo