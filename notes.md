  post '/pirates' do
  
  
  @pirate = Pirate.new(params[:pirate])        
  
  ---> (all params are from FORM (attr.acces) == argument HASH for Pirate.new -> pirate info & nested ship ARRAY)

  params[:pirate][:ships].each do |details|  
  
  
  ---> (three arguments iteration "name","type","booty")(nested SHIPS)
    Ship.new(details)                          
    
    
    ---> creating new ship objects with 3 arguments
  end
 
  @ships = Ship.all                            ---> saving ship objects to use in ERB
 
  erb :'pirates/show'
end