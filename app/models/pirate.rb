class Pirate
  attr_reader :name, :weight, :height
 
 PIRATES = []
 
  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end
 
  def self.all
    PIRATES
  end
 
end


[1] pry(#<Pirate>)> params
=> {"name"=>"Ian",
 "weight"=>"165",
 "height"=>"95",
 "ships"=>
  [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
   {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}
   
   
[8] pry(#<Pirate>)> params[:ships][0][:name]
=> "Titanic"

