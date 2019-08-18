class Pirate
  attr_accessor :name, :weight, :height

  PIR_ARRAY = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    PIR_ARRAY << self
  end

  def self.all
    PIR_ARRAY
  end

end
