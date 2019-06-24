require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb 'pirates/new'.to_sym
    end

    post '/pirates' do
      puts params
      @pirate = Pirate.new(params["pirate"])
      params["pirate"]["ships"].each do |details|
        Ship.new(details)
      end
      @ships= Ship.all
      erb 'pirates/show'.to_sym
    end
  end
end
