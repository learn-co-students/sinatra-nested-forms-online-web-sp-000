class Pirate
  
  attr_accessor :name, :weight, :height, :ships
  
  @@all = []
  
  def initialize(args) 
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    @ships = args[:ships]
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def ships
    ships = @ships.map{|ship| Ship.new(ship[:name], ship[:type], ship[:booty])}
  end
  
end