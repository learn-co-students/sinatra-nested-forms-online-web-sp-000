class Ship
    attr_accessor :name, :type, :booty

    @@all = []

    def self.all
        @@all
    end

    def initialize(attrs)
        @name = attrs[:name]
        @type = attrs[:type]
        @booty = attrs[:booty]
        self.class.all << self
    end

    

    def self.clear
        all.clear
    end
end