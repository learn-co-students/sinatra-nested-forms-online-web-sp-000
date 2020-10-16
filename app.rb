require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      pirates/new.erb
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :show
    end
    
  end
end
