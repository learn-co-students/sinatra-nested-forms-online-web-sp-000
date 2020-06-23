require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      p_name = params[:pirate][:name]
      p_weight = params[:pirate][:weight]
      p_height = params[:pirate][:height]
      @pirate = Pirate.new(p_name, p_weight, p_height)
      s1_name = params[:pirate][:ships][0][:name]
      s1_type = params[:pirate][:ships][0][:type]
      s1_booty = params[:pirate][:ships][0][:booty]
      @ship1 = Ship.new(s1_name, s1_type, s1_booty)
      s2_name = params[:pirate][:ships][1][:name]
      s2_type = params[:pirate][:ships][1][:type]
      s2_booty = params[:pirate][:ships][1][:booty]
      @ship2 = Ship.new(s2_name, s2_type, s2_booty)
      erb :'pirates/show'
    end


  end
end
