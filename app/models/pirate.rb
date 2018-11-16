class Pirate
  attr_reader :name, :weight, :height

  @@all = []
  def all
    @@all
  end

  def initialize(options)
    @name = options[:name]
    @weight = options[:weight]
    @height = options[:height]
    @@all << self
  end
end
