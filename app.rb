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

    post '/pirates' do 
      # binding.pry
      @pirate_name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]
      
      @ship_name = params[:pirate][:ships][0][:name]
      @type = params[:pirate][:ships][0][:type]
      @booty = params[:pirate][:ships][0][:booty]
      
      @ship_name2 = params[:pirate][:ships][1][:name]
      @type2 = params[:pirate][:ships][1][:type]
      @booty2 = params[:pirate][:ships][1][:booty]

      erb :'pirates/show'
    end

  end
end
