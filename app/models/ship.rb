class Ship
  attr_reader :name, :type, :booty

  @@all = []
  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(options)
    @name = options[:name]
    @type = options[:type]
    @booty = options[:booty]
    @@all << self
  end
end
