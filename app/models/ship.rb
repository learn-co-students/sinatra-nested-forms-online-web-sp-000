class Ship < ActiveRecord::Base


    attr_accessor :name, :booty, :type

    @@all = []
    
    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end

    def self.clear
        @@all = []
    end
    
    def self.all
        @@all
    end
    end