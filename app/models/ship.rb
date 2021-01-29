# class Ship < ActiveRecord::Base
#    belongs_to :pirate
#    attr_reader :name, :type, :booty

#    @@all = []

#    def initialize
#        @@all << self
#    end

#    def self.all
#        @@all
#    end

#    def self.clear
#        self.all.clear
#    end
#end