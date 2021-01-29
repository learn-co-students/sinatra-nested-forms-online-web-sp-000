class Ship < ActiveRecord::Base
    belongs_to :pirate
    attr_reader :name, :type, :booty

    SHIPS = []

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        @@all << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        self.all.clear
    end
end