class Ship

    attr_accessor :name, :type, :booty_attributes

    @@all = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty_attributes = params[:booty_attributes]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all.clear
    end

end