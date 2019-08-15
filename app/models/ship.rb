class Ship
  attr_reader :name, :type, :booty_attributes
  SHIP = []
  
  def initialze(name,type,booty_attributes)
    @name = name
    @type =  type
    @booty_attributes = booty_attributes
    SHIP << self
  end
  
  def self.all 
    SHIP
  end
  
  
  
end