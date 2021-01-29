class Ship < ActiveRecord::Base
    belongs_to :pirate
    attr_reader :name, :type, :booty

    SHIPS = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        self.all.clear
    end
end