class Ship 
attr_accessor :name, :type, :booty 
@@all = []

  def initialize(name, type=nil, booty=nil)
    @name = name 
    @type = type 
    @booty = booty
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.clear 
    @@all = [] 
  end 

end 