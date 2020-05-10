class Pirate
	attr_accessor :name, :weight, :height

	@@all = []

	def self.all
		@@all
	end

	def initialize(args)
		@name = args[:name]
		@weight = args[:weight]
		@height = args[:height]
		@@all << self
	end


end

# Create two classes, a Pirate class and a Ship class. 
# Pirates should have a name, weight, and height. 
# You will also need a class method that returns all the pirates. 
