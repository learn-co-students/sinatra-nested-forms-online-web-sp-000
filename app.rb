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

    post'/pirates' do 
      # binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        # binding.pry
           Ship.new(details)
      end

      @ships = Ship.all

      
      # @first_ship = Ship.new(params[:pirate][:ships][0])

      # @second_ship = Ship.new(params[:pirate][:ships][1])


      erb :'pirates/show'
    end

  end
end
