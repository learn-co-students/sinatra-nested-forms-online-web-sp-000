require './environment'

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
      
        Pirate.new(name:params[:pirate][:name],weight: params[:pirate][:weight], height: params[:pirate][:height])
        @pirates = Pirate.all  
        params["pirate"]["ships"].each{|ship| Ship.new(ship)} 
        @ships = Ship.all
        erb :'pirates/show'
      
      
      
       
    end

  end
end
