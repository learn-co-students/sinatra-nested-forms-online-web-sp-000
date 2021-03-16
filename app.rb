require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])

      params[:pirate][:ships].each do |ships|
        # binding.pry
        Ship.new(ships[:name],ships[:type], ships[:booty])
      end

      @ships = Ship.all
      # binding.pry
      erb :'pirates/show'
    end

  end
end
