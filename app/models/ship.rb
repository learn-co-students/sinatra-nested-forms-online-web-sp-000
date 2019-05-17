class Ship
  attr_accessor :name, :type, :booty, :pirate 
  
  @@all_ships = []
  
  def initialize(args) 
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@all_ships << self 
  end 
  
  def self.all 
    @@all_ships 
  end 
  
  def self.clear 
    @@all_ships.clear 
  end 
  
  
end