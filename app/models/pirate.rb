class Pirate
    attr_accessor :name, :weight, :height, :ships

    @@pirates = []

    def initialize(params)
        params.each_key do |key|
            self.send("#{key}=", params[key])
        end
        @@pirates << self
    end

    def all
        @@pirates
    end
end