class Pirate
    attr_reader :name, :job, :commit_heinous_act, :booty
    def initialize(name, job = "Scallywag")
        @name = name
        @job = job
        @heinous_act = 0
        @is_cursed = false
        @booty = 0
    end

    def cursed?
        @is_cursed
    end

    def commit_heinous_act
        @heinous_act = @heinous_act + 1
        if @heinous_act <= 2
            @is_cursed = false
        else
            @is_cursed = true 
        end
    end

    def rob_ship
        @booty = @booty + 100
    end
end 