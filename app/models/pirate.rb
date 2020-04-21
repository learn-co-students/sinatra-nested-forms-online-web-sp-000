class Pirate
  attr_reader :name, :age, :height
  PIRATES = []

  def initialize(pirate)
    @name = pirate[:name]
    @age = pirate[:age]
    @height = pirate[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end


end
