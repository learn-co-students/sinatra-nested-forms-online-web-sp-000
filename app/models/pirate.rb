class Pirate
    attr_accessor :name, :height, :weight
    Pirates = []

    def initialize(hash)
        @name = hash[:name]
        @height = hash[:height]
        @weight = hash[:weight]
        Pirates << self
    end

    def self.all
        Pirates
    end

end