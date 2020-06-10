require 'pry'

class Pirate

    @@all = []

    attr_accessor :name, :weight, :height

    def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height
        save 
    end 

    def save 
        @@all << self 
    end 

    def self.all 
        @@all
    end 

end