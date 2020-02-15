class Pirate
  attr_accessor :name, :weight, :height

  @@pirates = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end

  def self.all
    @@pirates
  end 
end
