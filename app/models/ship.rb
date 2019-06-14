class Ship

  @@all = {}

  attr_accessor :name, :type, :booty

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
  end

  def self.clear
    @@all.clear
  end

  def self.all
    self.class.all
  end

end
