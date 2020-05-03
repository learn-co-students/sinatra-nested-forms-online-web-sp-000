class Ship
    attr_reader :name, :type, :booty
    @@all = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end
end

ship = Ship.new(name: "Capt Swift", type: "H-boat", booty: "500kgs of goldbars")
p Ship.all
p ship.name
p ship.type
Ship.clear
p Ship.all
