require 'pry'
class Pirate 
    # has_many :ships
    attr_reader :name, :weight, :height

    @@all = []

    def initialize(params)
        #binding.pry
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        @@all << self
    end

    def self.all
        @@all
    end
end