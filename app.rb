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
          @pirate_person = params[:pirate]
          binding.pry
          @pirate = Pirate.new(pirate_person)



          params[:pirate][:ships].each do |details|
            Ship.new(details)
          end

          erb :"pirates/show"
        end
      end
  end
