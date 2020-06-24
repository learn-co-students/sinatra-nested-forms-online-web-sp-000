#Step 2 Create and work with your models. This should be empty until your db is filled.
class Pirate

  # has_many: ship

  attr_accessor :name, :weight, :height

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
