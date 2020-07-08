class Pirate
    attr_reader :name, :weight, :height
    @@all = []

    def initialize (name, weight, height)
        @name = name
        @weight = weight
        @height = height
        
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