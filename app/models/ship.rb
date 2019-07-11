class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(ship_attributes)
    ship_attributes.each { |key, value| self.send(("#{key}="), value) }
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end