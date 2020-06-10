require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :root
    end 

    get '/new' do 
      erb :'pirates/new'
    end 

    post '/pirates' do 
      blank = params[:pirate]

      @pirate = Pirate.new(blank[:name], blank[:weight], blank[:height])
      blank[:ships].each do |ships|
        Ship.new(ships[:name], ships[:type], ships[:booty])
      end
      @ships = Ship.all 
      
      erb :'pirates/show'
    end 


  end
end
