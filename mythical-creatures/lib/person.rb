class Person
    attr_reader :name
    def initialize(name)
        @name = name
        @zombify = false
    end

    def zombified?
        @zombify
    end

    def zombify
        @zombify = true
    end
    
    def unzombify
        @zombify = false
    end
end