class Pirate
  attr_accessor :name, :weight, :height
  @@ALL_PIRATES = []

  def initialize(pirate_params)
    @name = pirate_params[:name]
    @weight = pirate_params[:weight]
    @height = pirate_params[:height]
    @@ALL_PIRATES << self
  end

  def self.all
    @@ALL_PIRATES
  end
end
