class Pirate
  attr_accessor :name, :weight, :height

  pir_array = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
  end

  def self.all
    pir_array
  end
end
