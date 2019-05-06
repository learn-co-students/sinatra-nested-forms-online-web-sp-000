class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(attributes)
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @@all << self
  end

  def self.all
    @@all
  end

end
