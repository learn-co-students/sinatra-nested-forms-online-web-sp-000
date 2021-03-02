require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
        erb :root
    end

    get '/new' do

        erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |info|
        Ship.new(info)
      end

      @ships = Ship.all
=begin #=>
pry(#<FormsLab::App>)> @ships =>
[#<Ship:0x0000000002744d28
  @booty="Silver",
  @name="Titanic",
  @type="Steam Liner">,
 #<Ship:0x0000000002744c38
  @booty="Inner Tubes",
  @name="Carpathia",
  @type="Rescue Ship">]
=end
      #@ships will list an array with 2 ship instances. One of them is named Titanic
      #the second ship is named Carpathia.
      #I need to create 2 distinct objects and call out their name, type, and booty attributes
  #    binding.pry

      erb :show
    end
  end
end
