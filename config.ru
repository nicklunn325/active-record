require 'rack'
require_relative './config/environment.rb'

# my_server = Proc.new do 
#     [200, {'Content-Type' => 'text/html'}, ['Hello World!']]
# end

# run my_server

# class MyServer
#     def call(env)
#         return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
#     end

#     def pretty_response
#         (Time.now.to_i % 2).zero? ?  ["Hello"] : ["Hello"]
#     end
# end

run App.new 