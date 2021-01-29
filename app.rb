require './environment'
require 'pry'
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
      #binding.pry
      params[:pirate][:ships].each do |details|
      #binding.pry
        Ship.new(details)
      end
      #binding.pry
      @ships = Ship.all
      #binding.pry
      erb :'pirates/show'
    end
  end
end
