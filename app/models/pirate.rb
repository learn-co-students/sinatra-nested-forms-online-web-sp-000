class Pirate
  attr_accessor :name, :weight, :height

  PIRATE=[]

  def initialize(name,weight,height)
    @name=name
    @weight=weight
    @height=height
    PIRATE<<self
  end

  def self.all
    PIRATE
  end

end
