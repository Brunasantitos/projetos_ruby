#Capítulo 35

def gold_room
    puts "This room is full of gold. How much do you take?"

    print "> "
    choice = $stdin.gets.chomp

    if choice.include?("0") || choice.include?("1") # || (or)
        how_much = choice.to_i #declarando uma variavel com inversão de valor da entrada
    else
        dead("Man, you're to type a number.") #retorno de uma função com parâmetro
    end

    if how_much < 50 #se a entrada for menor que 50, retorna lógica
        puts "Nice, yo're not greedy, you win!"
        exit(0)
    else #se não satisfazer a lógica, retorna o else
        dead("You greedy bastard!")
    end
end 

def bear_room
    puts "There is a bear here."
    puts "The bear has a bunch of honey."
    puts "The fat bear is in front of another door."
    puts "How are you going t move the bear?"
    bear_moved = false

    while true
        print "> "
        choice = $stdin.gets.chomp #entrada do usuário

        if choice == "take honey"
            dead("The bear looks at you the slaps your face off.")
        elsif choice == "taunt bear" && !bear_moved # && (and)
            puts "The bear has moved from the door. You can go through it now."
            bear_moved = true
        elsif choice == "taunt bear" && bear_moved 
            dead("The bear gets pissed off and chews your leg off.") #retorno de uma função com parâmetro
        elsif choice == "open door" && bear_moved
            gold_room #está retornando uma função
        else
            puts "I got no idea what that means."
        end
    end
end

def cthulhu_room
    puts "Here you see he great evil Cthulhu."
    puts "he, it, whatever stares at you and you go insane."
    puts "Do you flee for your life or eat you head?"

    print "> "
    choice = $stdin.gets.chomp #entrada do usuário

    if choice.include? "flee" #esta verificando se o valor da entrada é o "see"
        start #retorno de uma função
    elsif choice.include? "head"  #esta verificando se o valor da entrada é o "head"
        dead("Well that was tasty!") #retorno de uma função com parâmetro
    else
        cthulhu_room #está retornando uma função, no caso ela mesma
    end
end

def dead(why)
    puts why, "Good job!"
    exit(0) #para que serve?
end

def start
    puts "You are in a dark room."
    puts "There is a door to your right and left."
    puts "Which one do you take?"
    
    print "> "
    choice = $stdin.gets.chomp #entrada de um usuário

    if choice == "left"
        bear_room #retorno de uma função
    elsif choice == "right"
        cthulhu_room #retorno de uma função
    else
        dead("You stumble around the room until you starve.") #retorno de uma função com parâmetro
    end
end

start #chamando uma função