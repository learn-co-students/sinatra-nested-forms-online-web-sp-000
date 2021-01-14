class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(attrs)
    @name = attrs[:name]
    @weight = attrs[:weight]
    @height = attrs[:height]
    self.class.all << self
  end

end