require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, 'views/pirates'

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])
      
      params["pirate"]["ships"].each { |attrs| Ship.new(attrs) }
      @ships = Ship.all
      erb :show
    end
  end
end


# attributes = {"pirate"=> {"name"=>"Ian",
# "weight"=>"165",
# "height"=>"95",
# "ships"=> [
#   {"name"=>"Titanic",
#     "type"=>"Steam Liner",
#     "booty"=>"Silver"},
#   {"name"=> "Carpathia",
#     "type"=>"Rescue Ship",
#     "booty"=>"Inner Tubes"}
#   ] 
# }
# }
