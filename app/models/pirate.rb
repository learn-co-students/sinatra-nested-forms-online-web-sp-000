class Pirate

    attr_accessor :name, :height, :weight
    @@pirates = []

    def initialize (params)
        @name = params[:pirate][:name]
        @height = params[:pirate][:height]
        @weight = params[:pirate][:weight]

        @@pirates << self
    end

    def self.all
        @@pirates
    end

end