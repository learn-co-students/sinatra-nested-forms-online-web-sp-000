class Ship

    attr_accessor :name, :type, :booty 

    @@ships = []

    def initialize(name, type, booty)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        save
    end

    def save
        @@ships << self 
    end

    def self.clear 
        @@ships = []
    end
    
end