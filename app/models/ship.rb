class Ship
    attr_accessor :name, :type, :booty
    @@ships = []

    def initialize(params)
        params.each_key do |key|
            self.send("#{key}=", params[key])
        end
        @@ships << self
    end

    def self.all
        @@ships
    end

    def self.clear
        @@ships = []
    end
end