class Pirate
  attr_reader :name, :weight, :height
  pirates=[]
  def initialize(info)
    @name=info[:name]
    @weight=info[:weight]
    @height=info[:height]
    pirates<< self
end
 def self.all
   pirates
 end
 end
