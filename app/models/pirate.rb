class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(params)
    @name, @height, @weight = params[:name], params[:height], params[:weight]
    @@all << self
  end

  def self.all 
    @@all 
  end


end