class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(attrs)
    attrs.each {|k,v| self.send("#{k}=",v)}
    @@all << self
  end

  def self.clear
    @@all.clear
  end

end
