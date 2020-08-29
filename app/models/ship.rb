class Ship
  attr_reader :name, :type, :booty_attributes

  SHIPS = []

  def initialize(attrs)
    @name = attrs[:name]
    @type = attrs[:type]
    @booty_attributes = attrs[:booty_attributes]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end




end