class Ship
  attr_accessor :name, :type, :booty

  def initialize(details)
    @name = details[:name]
    @type = details[:type]
    @booty = details[:booty]
  end

end
