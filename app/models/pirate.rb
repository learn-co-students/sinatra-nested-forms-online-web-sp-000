class Pirate
  
  attr_accessor :name, :weight, :height
  
  ALL_PIRATES = []
  
  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    ALL_PIRATES << self
  end
  
  def self.all
    ALL_PIRATES
  end
  
  def self.clear
    ALL_PIRATES.clear
  end
end