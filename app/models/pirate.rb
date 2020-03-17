class Pirate
    attr_reader :name, :weight, :height

    PIRATES = []

    def initilaize(args)
        @name = args[:name]
        @weight = args[:weight]
        @height = args[:height]
        PIRATES << self
    end

    def self
        PIRATES
    end
end