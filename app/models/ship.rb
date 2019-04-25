class Ship
  attr_accessor :name, :type, :booty
  @@ALL_SHIPS = []

  def initialize(ship_params)
    @name = ship_params[:name]
    @type = ship_params[:type]
    @booty = ship_params[:booty]
    @@ALL_SHIPS << self
  end

  def self.all
    @@ALL_SHIPS
  end

  def self.clear
    @@ALL_SHIPS = []
  end
end
