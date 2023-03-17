class Human
    attr_reader :name
    attr_accessor :encounter_counter, :swings

    def initialize (name = "Jane")
        @name = name
        @encounter_counter = 0
        @swings = 0
    end

    def notices_ogre?
        @encounter_counter % 3 == 0
    end

    def knocked_out?
        @swings >= 2
    end



end