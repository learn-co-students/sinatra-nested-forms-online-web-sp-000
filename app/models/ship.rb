class Ship < ActiveRecord::Base
  belongs_to :pirate
  
  @@all = []
  
  attr_accessor :name, :type, :booty
  
  @@all = []
  
  def initialize(name, category, booty)
    @name = name 
    @category = category
    @booty = booty
    self.all << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear
    @@all.clear
  end
  
end