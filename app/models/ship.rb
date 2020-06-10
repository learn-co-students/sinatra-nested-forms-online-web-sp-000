require 'pry'

class Ship

    @@all = []

    attr_accessor :name, :type, :booty

    def initialize(name, type, booty)
        @name = name
        @type = type
        @booty = booty
        save 
    end 

    def save 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def self.clear 
        @@all.clear
    end 

end