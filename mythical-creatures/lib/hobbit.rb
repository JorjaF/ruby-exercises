class Hobbit
    attr_reader :name, :disposition, :age, :adult, :old
    def initialize(name, disposition = "homebody", age = 0, adult = false, old = false)
        @name = name
        @disposition = disposition
        @age = age
        @adult = adult
        @has_ring = if @name == "Frodo"
            true
        end
    end
    
    def celebrate_birthday
        @age = @age + 1
    end

    def adult?
        if @age < 33
            @adult = false
        elsif @age >= 33 && @age <= 100
            @adult = true
        end 
    end

    def old?
        if @age >= 101
           @old = true
        end
    end

    def has_ring?
        @name == "Frodo"
    end

    def is_short?
        true
    end
end
    