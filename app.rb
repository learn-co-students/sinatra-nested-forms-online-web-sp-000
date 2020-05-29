require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
  get '/' do
    erb :new
  end 

  post '/pirates' do 
    @pirate=Pirate.new 
    params[:pirate][:ship].each do
      Ship.new(details)
    end
      @ship = Ship.all
    erb :show
  end 

end
end
