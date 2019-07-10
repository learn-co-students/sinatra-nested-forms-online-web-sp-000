class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(params)
    self.name = params[:name]
    self.weight = params[:weight]
    self.height = params[:height]
    self.class.all << self
  end

  def self.all
    @@pirates
  end

end
