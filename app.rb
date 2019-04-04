require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'root'
    end

    get '/new' do
      erb :'pirates/new'
    end

    get 'pirates' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params)

      params[:pirate][:ships].each do |args|
        Ship.new(args)
      end

      @ships = Ship.all

      @ship_1 = Ship.all.first
      @ship_2 = Ship.all.last

      erb :'pirates/show'
    end

  end
end
