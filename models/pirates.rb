class Pirate 
attr_accessor :name, :weight, :height

@@all = []
  def initialize(name, weight=nil, height=nil)
    @name= name
    @weight = weight 
    @height - height 
    @@all << self
  end 

  def self.all 
    @@all
  end 
  
end 