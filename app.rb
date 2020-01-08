require './environment'

module FormsLab
  class App < Sinatra::Base
     get '/pirates' do 
      @pirates = Pirate.all
      erb :'pirates/index'
    end
    
     get 'pirates/new' do 
      erb :'/pirates/new'
    end
    
    get '/pirates/:id' do 
      @pirate = Pirate.find(params["id"])
      erb :'/pirates/show'
    end
    
    post '/pirates' do 
      pirate = Pirate.new(name: params[:pirate][:name, height: params[:pirate][:height], weight: params[:pirate][:weight]])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
        end
    end
   
    
    
    
    
    get '/' do
      erb :'pirates/index'
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
   
    
    get '/pirates' do
      erb :'pirates/show'
    end
  end
end