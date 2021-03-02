class Pirate

  attr_reader :name, :height, :weight

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight] 
  end
end
