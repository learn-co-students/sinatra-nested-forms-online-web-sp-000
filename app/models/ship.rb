class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(ship_attributes)
    ship_attributes.each { |key, value| self.send(("#{key}="), value) }
    save << self
  end

  def save
    self.class.all
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end