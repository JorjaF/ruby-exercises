class Necromancer
    attr_reader :name, :zombies
    def initialize(name, zombies=[])
        @name = name
        @zombies = zombies
    end

    def stare(victim)
        victim.zombify
        zombies.unshift(victim)
        if zombies.count > 3
            old_victim = zombies.pop
            old_victim.unzombify
        end

    end

end 