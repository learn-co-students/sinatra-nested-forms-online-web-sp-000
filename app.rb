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

    # get '/' do 
    #   erb :show 
    # end 
  
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship_details|
        Ship.new(ship_details)
      end 

      @ships = Ship.all
      #binding.pry
      erb :'pirates/show'
    end 


  end
end
