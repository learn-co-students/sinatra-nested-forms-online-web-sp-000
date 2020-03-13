class Pirate
  attr_accessor :name, :height, :weight
  @@all = []
  def self.all
    @@all
  end

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    self.class.all << self
  end

  def self.clear
    @@all = []
  end
end
