require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end 

    post '/pirates' do
      @pirate = Pirate.new(pirate_params(params))
      make_ships(params)
      @ships = Ship.all
      erb :'pirates/show'
    end


    private
      def pirate_params(params)
        { :name => params[:pirate][:name],
          :weight => params[:pirate][:weight],
          :height => params[:pirate][:height] }
      end

      def make_ships(params)
        # params[:pirate][:ships].collect { |ship_hash| Ship.new(ship_hash)}
        params[:pirate][:ships].each { |ship_hash| Ship.new(ship_hash)}
      end

  end
end
