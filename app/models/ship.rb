class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  def self.all
    @@all
  end

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    self.class.all << self
  end

  def self.clear
    @@all = []
  end
end
