require './environment'

# Post lets you get
# Get lets you view

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    # set :new, 'app/new'
    # post '/new' do
    #   erb :new
    # end


    get '/new' do

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
