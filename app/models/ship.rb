class Ship
  attr_reader :name, :type, :booty 
  SHIPS = []

  def initialize(params)
    @name = params[:ships][:name]
    @type = params[:ships][:type]
    @booty = params[:ships][:booty]
    SHIPS << self
  end
  
  def self.all 
    SHIPS
  end
  
  def self.clear
    SHIPS.clear
  end
end