class Ship
  
  attr_accessor :name, :type, :booty
  
  ALL_SHIPS = []
  
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    ALL_SHIPS << self
  end
  
  def self.all
    ALL_SHIPS
  end
  
  def self.clear
    ALL_SHIPS.clear
  end
end