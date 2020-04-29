class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end
  
end
