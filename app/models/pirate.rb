class Pirate
  attr_reader :name, :weight, :height 
  PIRATES = []

  def initialize(params)
    @name = params[:pirate][:name]
    @height = params[:pirate][:height]
    @weight = params[:pirate][:weight]
    PIRATES << self
  end
  
  def self.all 
    PIRATES
  end
end