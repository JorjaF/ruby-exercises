class Wizard
    attr_reader :name, :bearded, :rested
    def initialize(name, bearded: true, rested: true)
        @name = name
        @bearded = bearded
        @rested = true
        @magic_missile = 0
    end

    def bearded?
        @bearded
    end

    def incantation(command)
        "sudo #{command}"
    end

    def rested?
        @rested
    end

    def cast
        @magic_missile = @magic_missile + 1
        if @magic_missile <= 2
               @rested = true
        else
                @rested = false
        end
           
        return "MAGIC MISSILE!"
    end


end