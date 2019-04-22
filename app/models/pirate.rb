class Pirate
  attr_accessor :name, :height, :weight

  @@all = []

  def save
    @@all << self
  end

  def self.clear
    @@all = []
  end
  
  def self.all
    @@all
  end
end
