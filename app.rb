require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get '/new' do 
      erb :new
    end

    post "/show" do

      @pirate = Pirate.new(params[:pirate])

      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])
    
      erb :show
    end

    post "/pirates" do

      @pirate = Pirate.new(params[:pirate])

      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])
    
      erb :show
    end

  end
end
