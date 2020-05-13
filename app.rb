require './environment'
#require_relative './app/models/pirate.rb'
#require_relative './app/models/ship.rb'

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
      @pirate = Pirate.new(params[:pirate])
      @ship_1 = Ship.new(params[:ship_name_1], params[:ship_type_1], params[:ship_booty_1])
      @ship_2 = Ship.new(params[:ship_name_2], params[:ship_type_2], params[:ship_booty_2])

      #@ships = Ship.all
      erb :'pirates/show'
    end

  end
end
