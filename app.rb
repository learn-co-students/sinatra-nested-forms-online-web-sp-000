
require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
       "Welcome to the Nested Forms Lab!"
    end 
    
    get '/new' do 
       erb :'pirates/new'
    end 
    
    post '/pirates' do 
       @pirate = Pirate.new(params[:pirate])
       params[:pirate][:ships].each do |details| 
         Ships.new(details)
       end 
       
       @ships = Ships.all
       
      erb :'pirates/show' 
    end

  end
end
