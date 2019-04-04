require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/pirates/new' do
      erb :'pirates/new.erb'
    end

    post '/pirates' do
      erb :'pirates/show.erb'
    end

  end
end
