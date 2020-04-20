require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    # set :new, 'app/new'
    get '/new' do
      "Hello"
      # binding.pry
      #  erb :new
    end


    # get '/pirates/index' do
    #   @pirate = Pirate.all
    # end

    # post '/pirates' do
    #
    #   erb :new
    # end

  end
end
