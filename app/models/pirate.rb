class Pirate
  attr_accessor :name, :weight, :height, :ships
  @@all = []

  def initialize
    @@all << self
  end
end
