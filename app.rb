require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate_name], params[:pirate_weight], params[:pirate_height])
      @ship_1 = Ship.new(params[:ship_name_1], params[:ship_type_1], params[:ship_booty_1])
      @ship_2 = Ship.new(params[:ship_name_2], params[:ship_type_2], params[:ship_booty_2])
      erb :show
    end

  end
end
