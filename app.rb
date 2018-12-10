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
      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["height"], params["pirate"]["weight"])
      
      ships_param = params["pirate"]["ships"]
      ships_param.each {|d| Ship.new(d["name"], d["type"], d["booty"])}
      
      @ships = Ship.all 
      
      erb :'pirates/show'
    end


  end #end of the app class 
end # end of the Module 
