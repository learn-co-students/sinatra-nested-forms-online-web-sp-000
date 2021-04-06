class Pirate < ActiveRecord::Base
    has_many :ships

attr_accessor :name, :weight, :height

@@all = []

def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self
end


def self.clear
    @@all = []
end

def self.all
    @@all
end
end






