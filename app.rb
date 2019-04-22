require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      Pirate.clear
      Ship.clear
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate = Pirate.new
      pirate.name = params[:pirate][:name]
      pirate.height = params[:pirate][:height]
      pirate.weight = params[:pirate][:weight]
      pirate.save

      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new
        ship.name = ship_data[:name]
        ship.type = ship_data[:type]
        ship.booty = ship_data[:booty]
        ship.save
      end

      @pirates = Pirate.all
      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
