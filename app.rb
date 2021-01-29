require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/new' do
      erb :new
    end

    post '/pirates' do
      

      erb :pirates
    end
  end
end
