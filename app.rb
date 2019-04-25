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
      #make a new Pirate
      @pirate = Pirate.new(params[:pirate])
      #make new ships
      params[:pirate][:ships].each do |ship_details|
        Ship.new(ship_details)
      end

      #display the info the user just submitted
      erb :'pirates/show'
    end
  end
end
