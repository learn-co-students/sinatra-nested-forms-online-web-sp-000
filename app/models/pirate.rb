class Pirate
  attr_reader :name, :weight, :height
  PIRATE = []
  
  def initialize(name, weight, height)
    @nanme = name
    @weight = weight
    @height = height
    PIRATE << self
  end
  
  def self.all 
    PIRATE
  end
  
end