class Pirate
  attr_accessor :name, :weight, :height
  def initialize(attrs)
    attrs.each{|k,v| self.send("#{k}=",v)}
  end
end
