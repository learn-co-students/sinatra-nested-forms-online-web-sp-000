require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params)
      binding.pry
      @ships = Ship.new(params)

      erb :'/pirates/show'
    end


  end
end
