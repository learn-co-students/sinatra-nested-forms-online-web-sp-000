require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/pirates/new' do
      erb :new
    end

    post '/pirates' do
      erb :show
    end

  end
end
