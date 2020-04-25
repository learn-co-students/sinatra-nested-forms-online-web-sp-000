ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
# require 'sinatra/reloader'

require './app/models/pirate.rb'
require './app/models/ship.rb'
