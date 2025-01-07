#capítulo 43
#teste de mesa do jogo Gothons from Planet Percal
#um meio de melhorar o jogo, é exibir opcoes para o usuario

#classe com metodo de reutilizacao
class Scene

    def enter()
        puts "This scene is not yet configured. Subclass it and implement enter()."
        exit(1) #significa que o programa terminou com erro
    end
end

#NAO ENTENDI DE FORMA CLARA
#o que cada linha esta fazendo?
#classe engine, nao possui heranca
class Engine
    #inicialização de variável de instancia, pode ser compartilhada entre metodos
    def initialize(scene_map)
        @scene_map = scene_map
    end

    def play()
        current_scene = @scene_map.opening_scene() #metodo .opening_scene da classe map.
        last_scene = @scene_map.next_scene('finished') #metodo .next_scene da classe map.

        while current_scene != last_scene
            next_scene_name = current_scene.enter() #o enter é um metodo criado originalmente da classe engine?
            current_scene = @scene_map.next_scene(next_scene_name)
        end

        current_scene.enter()
    end
end

#classe com herança
class Death < Scene

    #variável de classe, pode ser compartilhada entre todas as instancias de uma classe
    @@quips = [
        "You died. You Kinda suck at this",
        "Your mom would be proud... if she were smarter.",
        "Such a luser.",
        "I have a small puppy that's better at this."
    ]

    def enter()
       puts @@quips[rand(0...(@@quips.length - 1))] #sorteia uma frase aleatoria da variavel, .length retorna o tamanho do array
       exit(1) #significa que o programa terminou com erro
    end
end

#classe central de controle com herança
#essa é a primeira fase do jogo, comeca no corredor
class CentralCorridor < Scene
    def enter() #método herdado da classe Scene, seu conteúdo modificado
        puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
        puts "your entire crew.  You are the last surviving member and your last"
        puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
        puts "put it in the bridge, and blow the ship up after getting into an "
        puts "escape pod."
        puts "\n"
        puts "You're running down the central corridor to the Weapons Armory when"
        puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
        puts "flowing around his hate filled body.  He's blocking the door to the"
        puts "Armory and about to pull a weapon to blast you."
        print "> "
    

        action = $stdin.gets.chomp #variavel que recebe entrada do usuario 

        if action == "shoot!"
            puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
            puts "His clown costume is flowing and moving around his body, which throws"
            puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
            puts "completely ruins his brand new costume his mother bought him, which"
            puts "makes him fly into an insane rage and blast you repeatedly in the face until"
            puts "you are dead.  Then he eats you."
            return 'death' #retorna a classe death

        elsif action == "dodge!"
            puts "Like a world class boxer you dodge, weave, slip and slide right"
            puts "as the Gothon's blaster cranks a laser past your head."
            puts "In the middle of your artful dodge your foot slips and you"
            puts "bang your head on the metal wall and pass out."
            puts "You wake up shortly after only to die as the Gothon stomps on"
            puts "your head and eats you."
            return 'death' #retorna a classe death
      
        elsif action == "tell a joke"
            puts "Lucky for you they made you learn Gothon insults in the academy."
            puts "You tell the one Gothon joke you know:"
            puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
            puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
            puts "While he's laughing you run up and shoot him square in the head"
            puts "putting him down, then jump through the Weapon Armory door."
            return 'laser_weapon_armory' #retorna a classe LeaserWeaponArmony
      
        else
            puts "DOES NOT COMPUTE!"
            return 'central_corridor' #retorna a classe CentralCorritor
        end
    end
end

#classe arsenal de armas com herança
#segunda fase do jogo, deve adivinhar a senha para ir para a proxima fase
class LaserWeaponArmory < Scene
    def enter() #apenas imprime as informacoes abaixo
        puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
        puts "for more Gothons that might be hiding.  It's dead quiet, too quiet."
        puts "You stand up and run to the far side of the room and find the"
        puts "neutron bomb in its container.  There's a keypad lock on the box"
        puts "and you need the code to get the bomb out.  If you get the code"
        puts "wrong 10 times then the lock closes forever and you can't"
        puts "get the bomb.  The code is 3 digits."

        code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}" #sorteio de 3 numeros aleatorios do número 1 ao 9

        print "[keypad] >" #mensagem para o usuario para ele colocar a entrada
        guess = $stdin.gets.chomp #entrada do usuario
        guesses = 0 #iterador para contagem de tentativas
        
        while guess != code && guesses < 10
            puts "BZZZZEDDD!"
            guesses += 1 #contador de vezes de erros
            print "[keypad] >" 
            guess = $stdin.gets.chomp #solicita novamente uma entrada para o ususario
        end
        
        if guess == code #imprime as mensagens caso a entrada for igual aos numeros
            puts "The container clicks open and the seal breaks, letting gas out."
            puts "You grab the neutron bomb and run as fast as you can to the"
            puts "bridge where you must place it in the right spot."
            return 'the_bridge' #retorna a classe TheBridge

        else #imprime as mensagens se a entrada não for igual aos numeros
            puts "The lock buzzes one last time and then you hear a sickening"
            puts "melting sound as the mechanism is fused together."
            puts "You decide to sit there, and finally the Gothons blow up the"
            puts "ship from their ship and you die."
            return 'death' #retorna a classe death
        end
    end
end

#classe ponte com heranca
#terceira fase do jogo, o usuario informa o que quer fazer
class TheBridge < Scene

    def enter() #imprime mensagens para o usuario
        puts "You burst onto the Bridge with the netron destruct bomb"
        puts "under your arm and surprise 5 Gothons who are trying to"
        puts "take control of the ship.  Each of them has an even uglier"
        puts "clown costume than the last.  They haven't pulled their"
        puts "weapons out yet, as they see the active bomb under your"
        puts "arm and don't want to set it off."
        print "> "

        action = $stdin.gets.chomp #variavel que guarda o valor da entrada do usuario

        if action == "throw the bomb" #se o valor da variavel for igual ao parametro, retorna as mensagens
            puts "In a panic you throw the bomb at the group of Gothons"
            puts "and make a leap for the door.  Right as you drop it a"
            puts "Gothon shoots you right in the back killing you."
            puts "As you die you see another Gothon frantically try to disarm"
            puts "the bomb. You die knowing they will probably blow up when"
            puts "it goes off."
            return 'death' #retorna a classe death

        elsif action == "slowly place the bomb" #se o valor não for igual a primeira opcao, e se for igual a esse parametro, retona as mensagens
            puts "You point your blaster at the bomb under your arm"
            puts "and the Gothons put their hands up and start to sweat."
            puts "You inch backward to the door, open it, and then carefully"
            puts "place the bomb on the floor, pointing your blaster at it."
            puts "You then jump back through the door, punch the close button"
            puts "and blast the lock so the Gothons can't get out."
            puts "Now that the bomb is placed you run to the escape pod to"
            puts "get off this tin can."
            return 'escape_pod' #retorna a classe EscapePod

        else #se a entrada do usuario não for igual as opcoes anteriores, retorna essa mensagem
            puts "DOES NOT COMPUTE!"
            return "the_bridge" #reinicia a classe, forcando o usuario colocar um valor
        end  
    end
end

#classe capsula com herança
#quarta fase do jogo, o usuario deve escolher um numero entre 0 a 5
class EscapePod < Scene

    def enter() #imprime mensagem para o usuario
        puts "You rush through the ship desperately trying to make it to"
        puts "the escape pod before the whole ship explodes.  It seems like"
        puts "hardly any Gothons are on the ship, so your run is clear of"
        puts "interference.  You get to the chamber with the escape pods, and"
        puts "now need to pick one to take.  Some of them could be damaged"
        puts "but you don't have time to look.  There's 5 pods, which one"
        puts "do you take?"

        good_pod = rand(1..5) #variavel para guardar o numero sorteado
        print "[pod #]> " #mensagem para o usuario
        guess = $stdin.gets.chomp.to_i #variavel que guarda o valor da entrada do usuario, do tipo inteiro

        if guess != good_pod #comparacao de valores, se o resultado for true, retorna a mensagem para o usuario
            puts "You jump into pod %s and hit the eject button." % guess #placeholder %s, imprime o numero inteiro da variavel guess em forma de string
            puts "The pod escapes out into the void of space, then"
            puts "implodes as the hull ruptures, crushing your body"
            puts "into jam jelly."
            return 'death'#retorna a classe death

        else #se a primeira condicao for false, retorna as mensagens abaixo
            puts "You jump into pod %s and hit the eject button." % guess #placeholder %s, imprime o numero inteiro da variavel guess em forma de string
            puts "The pod easily slides out into space heading to"
            puts "the planet below.  As it flies to the planet, you look"
            puts "back and see your ship implode then explode like a"
            puts "bright star, taking out the Gothon ship at the same"
            puts "time.  You won!"
            return 'finished' #retorna a classe Finished
        end
    end
end
 #classe com heranca da classe Scene, retorna apenas uma mensagem
class Finished < Scene
    def enter()
        puts "You won! Good job."
    end
end

#classe do mapa
#nao entendi de forma tao clara
class Map
    #sao objetos criados?
    @@scenes = {
        'central_corridor' => CentralCorridor.new(),
        'laser_weapon_armory' => LaserWeaponArmory.new(),
        'the_bridge' => TheBridge.new(),
        'escape_pod' => EscapePod.new(),
        'death' => Death.new(),
        'finished' => Finished.new(),
    }
  
  
    def initialize(start_scene) #inicializa com um parametro
        @start_scene = start_scene
    end
  
  
    def next_scene(scene_name)
        val = @@scenes[scene_name]
        return val #retorna a variavel val
    end
  
    def opening_scene()
        return next_scene(@start_scene) #retorna o metodo next_scene
    end
end

#objetos de testes
a_map = Map.new('central_corridor') #o parametro é uma chave da variavel de instância da classe Map
a_game = Engine.new(a_map) #o objetivo criado tem como parametro o objeto a_map
a_game.play()
