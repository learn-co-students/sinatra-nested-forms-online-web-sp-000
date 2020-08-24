class Ship
    attr_accessor :booty, :name
    attr_reader :type
    @@all=[]
    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end
    def self.all
        @@all
    end
    def self.clear
        @@all=[]
    end
end