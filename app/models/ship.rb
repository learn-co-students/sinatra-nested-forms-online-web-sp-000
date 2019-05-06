class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(attributes)
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
