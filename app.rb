require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'


module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
get '/new' do
  erb :'pirates/new'
end



get '/' do
  "Welcome to the Nested Forms Lab!"
end


post '/pirates' do
  @pirate = Pirate.new(params[:pirate])

  params[:pirate][:ships].each do |details|
    Ship.new(details)
  end


  @ships = Ship.all


  erb :'pirates/show'
end

post '/ship' do
  @ship = Ship.new(params[:ship])

  erb :'pirates/show'
end



end
end
