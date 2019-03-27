class Ship
  attr_accessor :name, :type, :booty
  
  @@all = []
  
  def initialize(arg)
    @name = arg[:name]
    @type = arg[:type]
    @booty = arg[:booty]
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def self.clear
    @@all.clear
  end 
  
end