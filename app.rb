require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      params.inspect
      # erb :'pirates/new'
    end
  
  
  
  
  
  
  end
end
