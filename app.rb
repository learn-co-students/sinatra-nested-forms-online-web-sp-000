require './environment'

  module FormsLab
      class App < Sinatra::Base

        get '/' do
          erb :root
        end

        get '/new' do
          erb :"pirates/new"
        end

        post '/pirates' do
          @pirate_ships = []

          @pirate = Pirate.new(params[:pirate])

          params[:pirate][:ships].each do |details|
            @pirate_ships<<Ship.new(details)
          end

          erb :"pirates/show"
        end
      end
  end
