require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'./pirates/new'
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params)
      params["pirate"]["ships"].each do |ship|
        Ship.new(args)
      end

      @ships = Ship.all

      erb :'./pirates/show'
    end

  end
end
