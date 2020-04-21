require './environment'

# Post lets you get
# Get lets you view

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
      @pirates = params
      @name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]

      @ship_name_1 = params[:pirate][:ships][0][:name]
      @ship_name_2 = params[:pirate][:ships][1][:name]
      @ship_type_1 = params[:pirate][:ships][0][:type]
      @ship_type_2 = params[:pirate][:ships][1][:type]
      @ship_booty_1 = params[:pirate][:ships][0][:booty]
      @ship_booty_2 = params[:pirate][:ships][1][:booty]
      # binding.pry
      erb :"pirates/new"
    end



  end
end
