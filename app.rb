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
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      
      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end


# module FormsLab
#   class App < Sinatra::Base
#     get '/' do 
#       erb :root 
#     end
#     get '/new' do 
#       erb :'pirates/new'
#     end
#     post '/pirates' do 
#       @pirate = Pirate.new(params[:pirate])
#       @ship_1 = Ship.new(params[:pirate][:ships][0])
#       @ship_2 = Ship.new(params[:pirate][:ships][1])
#       erb :"pirates/show" 
#     end
#     # code other routes/actions here
#   end
# end
