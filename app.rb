require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end 

    get '/new' do 
      erb :'/pirates/new'
    end 

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      # params = { 
      #   pirate => 
      #   {name: , weight: , height:, 
      #   ships => { 
      #     {name: , booty: , type: }, 
      #     {name: , booty: , type: }
      #     }
      #   } 
      # } 

      #iterate over params[pirate][ships]
      #create a new instance from each one 
      params[:pirate][:ships].each do |ship_hash|
        Ship.new(ship_hash)
      end 

      @ships = Ship.all 
      
      erb :'/pirates/show'
    end 

  end
end
