require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :index
    end
    
    get '/new' do 
      erb :'pirates/new'
    end
    
    post '/pirates' do 
      @name = params['pirate[name]']
      @weight = params['pirate[weight]']
      @height = params['pirate[height]']
      @pirates = Pirate.all
      @ship1_name = params['pirate[ships][][name]'] 
      @ship1_type = params['pirate[ships][][type]'] 
      @ship1_booty = params['pirate[ships][][booty]'] 
      @ship2_name = params['pirate[ships][][name]'] 
      @ship2_type = params['pirate[ships][][type]'] 
      @ship2_booty = params['pirate[ships][][booty]'] 
      puts params
      erb :'pirates/show'
    end
    
    get '/pirates' do
      erb :'pirates/show'
    end
  end
end