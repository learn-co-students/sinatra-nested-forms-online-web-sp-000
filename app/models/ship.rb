class Ship
  attr_reader :name, :type, :booty

  SHIPS = []
  def self.all
    SHIPS
  end
end
