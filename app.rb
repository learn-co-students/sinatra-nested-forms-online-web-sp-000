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

      @name = Ship.all.map {|ship| ship.name}
      @type = Ship.all.map {|ship| ship.type}
      @booty = Ship.all.map {|ship| ship.booty}

      erb :'pirates/show'
    end

  end
end
