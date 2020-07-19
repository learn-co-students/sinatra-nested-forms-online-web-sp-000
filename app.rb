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
      @pirate_input = params[:pirate]
    end 


  end
end
