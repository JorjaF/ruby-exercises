class Centaur
    attr_reader :name, :breed, :cranky

    def initialize(name, breed = "Palomino", cranky)
        @name = name
        @breed = breed
        @actions = 0
        @standing = true
    end

    def shoot
        @actions = @actions + 1
        if self.cranky? || self.laying?
            "NO!"
        else
            "Twang!!!"
        end
    end

    def run
        if self.laying? 
            "NO!" 
        else 
            @actions = @actions + 1
            "Clop clop clop clop!"
        end
    end

    def cranky?
        @actions >= 3
    end 

    def standing?
        @standing
    end

    def sleep
       if self.standing? == true
        "NO!"
       elsif self.standing? == false
        "Good Night!"
        @actions = 0
        end 
    end

    def lay_down
        @standing = false
    end 

    def laying?
        !self.standing?
    end

    def stand_up
        @standing = true
    end

    def drink
       if self.standing? == false
        "NO!"
       elsif @actions == 0 
        "OMGs I am so sick!!"
       else
           "Yum!"
        @actions = 0 
       end
    end

end 