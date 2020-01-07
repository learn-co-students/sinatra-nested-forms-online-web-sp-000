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