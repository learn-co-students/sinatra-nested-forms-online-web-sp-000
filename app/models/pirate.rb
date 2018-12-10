class Pirate
  
   attr_reader :name, :weight, :height 
  
  @@all = [] 
  
  def initialize (name, weight, height) 
    @name, @weight, @height = name, weight, height
    @@all.push(self)  
  end 
  
  def self.all 
    @all 
  end 
  
end #end of the Pirate class 