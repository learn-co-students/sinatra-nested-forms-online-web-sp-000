class Ship
  attr_accessor :name, :type, :booty
  @@ships = []

  def initialize(params)
    self.name = params[:name]
    self.type = params[:type]
    self.booty = params[:booty]
    self.class.all << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
