class Pirate
  attr_accessor :name, :weight, :height
  @@existing = []
  
  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@existing << self
  end
  
  def self.all
    @@existing
  end
  
  def self.clear
    @@existing.clear
  end
end