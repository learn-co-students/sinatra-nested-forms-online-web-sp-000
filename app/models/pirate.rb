class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(pirate_attributes)
    pirate_attributes.each { |key, value| self.send(("#{key}="), value) }
    save << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all
  end

end

