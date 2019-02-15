require './environment'
require_relative './app/models/pirate'
require_relative './app/models/ship'

module FormsLab
  class App < Sinatra::Base

    get '/' do 
      erb :root
    end 
    
    get '/new' do 
      erb :"pirates/new"
    end 
    
    post "/pirates" do 
      @pirate = Pirate.new( params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight] )
      @ships = []
      params[:pirate][:ships].each { |ship| @ships << Ship.new( ship[:name], ship[:type], ship[:booty] ) }
      #binding.pry
      erb :"pirates/show"
    end 

  end
end
