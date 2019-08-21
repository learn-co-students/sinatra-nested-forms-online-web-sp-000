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
      @pirate = Pirate.new.tap do |p|
        p.name = params[:pirate][:name]
        p.weight = params[:pirate][:weight]
        p.height = params[:pirate][:height]
      end

      @ship_1 = Ship.new.tap do |s|
        s.name = params[:pirate][:ships][0][:name].to_s
        s.type = params[:pirate][:ships][0][:type]
        s.booty = params[:pirate][:ships][0][:booty]
      end

      @ship_2 = Ship.new.tap do |s|
        s.name = params[:pirate][:ships][1][:name]
        s.type = params[:pirate][:ships][1][:type]
        s.booty = params[:pirate][:ships][1][:booty]
      end

      erb :'pirates/show'
    end

  end
end
