class Pirate
  attr_accessor :name, :weight, :height

  def initialize(name,weight,height)
    @name = params[:pirate_name]
    @weight = params[:pirate_weight]
    @height = params[:pirate_height]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
