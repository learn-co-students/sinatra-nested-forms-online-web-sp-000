class Ship
    attr_reader :name, :type, :booty

    SHIP = []

    def initialize(args)
        @name=args[:name]
        @type=args[:type]
        @booty=args[:booty]
        SHIP << self
    end
     
    def self.all
        SHIP
    end

    def self.clear
        SHIP.clear
    end
end

# SHIPS = []

#     def initialize(name, type, booty)
#         @name = args[:name]
#         @type = args[:type]
#         @booty = args[:booty]
#         SHIPS << self
#     end
     
#     def self.all
#         SHIPS
#     end

#     def self.clear
#         SHIPS.clear
#     end