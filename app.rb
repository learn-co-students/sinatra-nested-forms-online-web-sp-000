require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
      #if u have path instead of ifle, u need to wrap it around a quote
    end

    post '/pirates' do
      #process the form, pass the params to models, then pass models to views
      @pirate = Pirate.new(params[:pirate])
      #the pirate hash contains not just name weight height but also the ships key
      #thats ok, unneeded things will be ignored
      @hi = "linda"
      #loop  to create ship objects
      params[:pirate][:ships].each do | shiphash |
        Ship.new(shiphash)
      end
      
      @ships = Ship.all

      erb :'pirates/show'
    end




  end #end class
end #end module
