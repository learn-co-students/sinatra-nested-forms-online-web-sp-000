require './environment'

module FormsLab
  class App < Sinatra::Base
    get "/" do
      erb :'pirates/new'
    end

    post "/show" do
      erb :"pirates/show"
    end
    # code other routes/actions here

  end
end
