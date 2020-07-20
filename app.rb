require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      # puts params[:pirate][:ships]
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      # @ship = Ship.new(params[:ship])

      erb :"pirates/show"
    end


  end
end
