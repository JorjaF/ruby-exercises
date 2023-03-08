class Dragon
    attr_reader :name, :color, :rider, :hungry, :eats
    def initialize (name, color, rider, hungry = true)
        @name = name
        @color = color
        @rider = rider
        @meal = 0
        @hungry = true
    end

    def hungry?
        hungry
    end

    def eat
       @meal = @meal + 1
       if @meal < 3
            @hungry = true
       elsif @meal >= 3
            @hungry = false
       end
    end
end