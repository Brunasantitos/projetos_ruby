#capítulo 43
#teste de mesa do jogo Gothons from Planet Percal

#classe do mapa
class Scene
    def enter()
    end
end

#classe do motor, o que é o motor?
class Engine
    def initialize(Scene_mapa)
    end

    def play()
    end
end

#classe morte com herança
class Death < Scene
    def enter()
    end
end

#classe central de controle com herança
class CentralCorridor < Scene
    def enter()
    end
end

#classe arsenal de armas com herança
class LaserWeaponArmory < Scene
    def enter()
    end
end

#classe ponte com herança
class TheBridge < Scene
    def enter()
    end
end

#classe capsula com herança
class EscapePod < Scene
    def enter()
    end
end

#classe do mapa
class Map
    def initialize(start_scence)
    end

    def next_scene(scene_name)
    end

    def opening_scene()
    end
end

#objetos de testes
a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()