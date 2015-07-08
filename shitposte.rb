require 'sinatra'
require 'haml'


get '/' do
  haml :_boiler
end

get '/board/:id' do
  "board id is #{params["id"]}"
  haml :board
end

 
post '/board/' do
  puts params["content"]
end


