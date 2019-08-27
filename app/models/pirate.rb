class Pirate
  attr_accessor :name, :weight, :height
  def initialize(pirate_person)
    @name = pirate_person[:name]
    @weight = pirate_person[:weight]
    @height = pirate_person[:height]
  end
end
