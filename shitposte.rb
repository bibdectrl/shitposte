require 'sinatra'
require 'haml'


get '/' do
  haml :_boiler
end

get '/board/:id' do
  "board id is #{params["id"]}"
  @posts = Post.get(id => params["id"])
  erb :board
end

 
post '/board/' do
  puts params["content"]
end


