require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/pirates' do 
      @pirates = Pirate.all 
      erb :'pirates/index'
   end
  
  post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end
    
  get '/' do
    erb :root
  end 
  get '/new' do 
    erb :'pirates/new'
  end
end
end
