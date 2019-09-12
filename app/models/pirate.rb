class Pirate
  attr_reader :name, :weight, :height 
  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    PIRATES << self
  end
  
  def self.all 
    PIRATES
  end
end