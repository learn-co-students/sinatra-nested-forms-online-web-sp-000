class Ship
    attr_reader :name, :type, :booty
    @@all = []

    def initialize (name, type, booty)
        @name = name
        @type = type
        @booty = booty
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.clear
        @@all = []
    end
end