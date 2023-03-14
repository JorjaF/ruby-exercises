class Medusa
    attr_reader :name, :statues
    def initialize(name, statues =[])
        @name = name
        @statues = statues
    end

    def stare(victim)
        victim.stone
        statues.unshift(victim)
        if statues.count > 3 
            unstoned_victim = statues.pop
            unstoned_victim.unstoned
        end
    end


end