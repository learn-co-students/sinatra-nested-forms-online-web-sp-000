class Pirate < ActiveRecord::Base
  has_many :ships
  
  attr_accessor :name, :weight, :height
  
  @@all = []
  
  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    self.all << self
  end
  
  def self.all 
    @@all
  end
  
end