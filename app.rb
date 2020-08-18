require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end 
    
    get '/new' do 
      
      erb :'pirates/new' 
      # binding.pry
    end 
    
    post '/pirates' do 
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      # @pirate = Pirate.new(args[:name], args[:weight], args[:height])
      erb :'pirates/show' 
    end 
    
  end
end
