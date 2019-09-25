class Ship
attr_reader :name, :booty, :type
    
    SHIPS = []
    
    def initialize(args)
        @name = args[:name]
        @booty = args[:booty]
        @type = args[:type]
        SHIPS << self
    end
           
    def self.all
        SHIPS
    end
        
    def self.clear 
        SHIPS.clear
    end
 
end