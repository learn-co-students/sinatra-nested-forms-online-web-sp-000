require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      params["pirate"]["ships"].each {|ship| Ship.new(ship)}
      @ship1 = Ship.all[0]
      @ship2 = Ship.all[1]
      @pirate = Pirate.new(params["pirate"])

      erb :'pirates/show'
    end

  end
end
