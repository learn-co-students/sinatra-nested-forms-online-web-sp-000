require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :index
    end
    
    get '/new' do 
      erb :new
    end
    
    post '/pirates' do 
      @name = params['pirate[name]']
      @weight = params['pirate[weight]']
      @height = params['pirate[height]']
      @ship1_name = params['pirate[ships][][name]'] 
      @ship1_type = params['pirate[ships][][type]'] 
      @ship1_booty = params['pirate[ships][][booty]'] 
      @ship2_name = params['pirate[ships][][name]'] 
      @ship2_type = params['pirate[ships][][type]'] 
      @ship2_booty = params['pirate[ships][][booty]'] 
      puts params
      erb :show
    end
    
    get '/pirates' do
      erb :show
    end
  end
end