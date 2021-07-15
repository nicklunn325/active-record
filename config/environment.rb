# connect to our database

require "bundler/setup" # gem that bundles all our gems together
Bundler.require
require "sinatra/activerecord"
# require "ostruct"
# require "date"
require_all 'app'

ENV["SINATRA_ENV"] ||= 'development'
ActiveRecord::Base.establish_connection(ENV["SINATRA_ENV"].to_sym)
