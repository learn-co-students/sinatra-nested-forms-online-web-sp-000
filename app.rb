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
      #create @pirates and @ships with params
      erb :'pirates/show'
    end

  end
end
