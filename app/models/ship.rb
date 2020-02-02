class Ship
  attr_reader :name, :type, :booty

  @@exisitng = []

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@exisitng << self
  end

  def self.all
    @@exisitng
  end

  def self.clear
    @@exisitng.clear
  end
end