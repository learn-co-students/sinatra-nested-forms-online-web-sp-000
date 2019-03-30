class Pirate
  attr_accessor :name, :weight, :height
  @@all = []
  
  def intialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
  end
  
  def self.all
    @@all
  end
  
  def self.clear
    @@all = []
  end
end