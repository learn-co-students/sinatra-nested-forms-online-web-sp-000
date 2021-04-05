class Ship
    attr_accessor :name, :type, :booty
    @@ships = []

    def initialize(attributes)
        @name = attributes[:name]
        @type = attributes[:type]
        @booty = attributes[:booty]

        @@ships << self
    end

    def self.all
        @@ships
    end

    def self.clear
        @@ships = []
    end
end