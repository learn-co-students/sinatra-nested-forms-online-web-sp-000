require_relative '../environment.rb'


class App < Sinatra::Base
  get '/' do
    erb :root
  end

end
