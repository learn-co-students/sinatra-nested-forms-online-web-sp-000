require './environment'

module FormsLab
  class App < Sinatra::Base

  get '/' do
    "Welcome to the Nested Forms Lab!"
  end
  
  get '/new' do
    erb :'pirates/new'
  end
  

  
  post '/pirates' do
  @pirate = Pirate.new(params[:pirate])        ---> (params from FORM(attr.acces) == argument HASH for Pirate.new - pirate info & nested ship ARRAY)

  params[:pirate][:ships].each do |details|    ---> (three arguments iteration "name","type","booty")(nested SHIPS)
    Ship.new(details)                          ---> creating new ship objects with 3 arguments
  end
 
  @ships = Ship.all                            ---> saving ship objects to use in ERB
 
  erb :'pirates/show'
end

  end
end


[1] pry(#<FormsLab::App>)> @pirate = Pirate.new(params[:pirate])
=> <Pirate:0x0000000002ce36a8 @height="95", @name="Ian", @weight="165">

[2] pry(#<FormsLab::App>)> params[:pirate]
=> {"name"=>"Ian",
 "weight"=>"165",
 "height"=>"95",
 "ships"=>
  [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
   {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]}

[3] pry(#<FormsLab::App>)> params[:pirate][:ships]
=> [{"name"=>"Titanic", "type"=>"Steam Liner", "booty"=>"Silver"},
 {"name"=>"Carpathia", "type"=>"Rescue Ship", "booty"=>"Inner Tubes"}]