class Ship
  attr_accessor :name, :weight, :booty
  @@all = []
  
  def intialize(name, type, booty)
    @name = name
    @weight = type
    @booty = booty
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all = []
  end
end