class Ship
	attr_accessor :name, :type, :booty

	@@all = []

	def self.all
		@@all
	end

	def self.clear
		@@all = []
	end

	def initialize(args)
		args.each {|key, value| self.send("#{key}=", value)}
		@@all << self
	end
end

# The ship class should have name, type, and booty attributes, 
# as well as a class method .all that returns all the ships
#  and a class method .clear that deletes all ships.