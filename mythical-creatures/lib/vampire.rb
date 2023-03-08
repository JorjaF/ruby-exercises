class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
        @name = name 
        @pet = pet
        @thirsty = true
    end

    def pet?
        return true if pet == "bat"
        false
    end 

    def drink
        @thirsty = false
    end
end