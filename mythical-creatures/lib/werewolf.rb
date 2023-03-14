class Werewolf
    attr_reader :name, :location

    def initialize(name, location = "London")
        @name = name
        @location = location
        @human = true
        @hungry = false

    end

    def human?
        @human
    end

    def wolf?
        !@human
    end
    
    def change!
        @human = !@human
        @hungry = true if self.wolf?
    end

    def hungry?
        @hungry
    end

    def consume?(victim)
        if self.wolf?
            @hungry = false
            victim.kill!            
            true
        else 
            false
        end
   
    end
       
end