class Ship

  @@all = []

  attr_accessor :name, :type, :booty

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
    @@all << self
  end

  def self.clear
    @@all.clear
  end

  def self.all
    @@all
  end

end
