#Step 2 Create and work with your models. This should be empty until your db is filled.
class Ship
  # belongs_to: pirate

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end

end