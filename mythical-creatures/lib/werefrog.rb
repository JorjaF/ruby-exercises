class Werefrog
    attr_reader :name, :location

    def initialize(name, location = "Luxor")
        @name = name
        @location = location
        @human = true
        @hungry = false
    end

    def human?
       @human
    end

    def frog?
        !@human
    end

    def hungry?
        @hungry
    end

    def change!
        @human = !@human
        @hungry = true if self.frog?
    end

    def consume?(victim)
        if self.frog? 
            @hungry = false
            victim.kill!            
            true
        else 
            false
        end
    end

end