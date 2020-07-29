class Pirate

    attr_accessor :name, :weight, :height

    @@all = []
    def initialize(name = nil, weight = nil, height = nil)
        @name = name
        @weight = weight
        @height = height
    end

    def self.all
        @all
    end

    def self.clear
        @all.clear
    end
end