ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
#require 'sinatra/reloader'

require '/Users/Eric/Development/code/sinatra-nested-forms-online-web-sp-000/app/models/pirate.rb'
require '/Users/Eric/Development/code/sinatra-nested-forms-online-web-sp-000/app/models/ship.rb'
