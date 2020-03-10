require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      
      first_ship = params[:pirate][:ships].first
      @ship_one = Ship.new(first_ship[:name], first_ship[:type], first_ship[:booty])

      second_ship = params[:pirate][:ships].last
      @ship_two = Ship.new(second_ship[:name], second_ship[:type], second_ship[:booty])

      erb :'pirates/show'
    end
  end
end
