require 'sinatra'
require 'sequel'

DB = Sequel.sqlite("test.db")

get '/' do
  erb :index
end

post '/board' do
  "board id is #{params["board_id"]}"
  @posts = DB[:posts].where(:id => params["board_id"])
  @id = params["board_id"]
  erb :board
end

 
post '/board/:id/:post' do
  puts params["content"]
end


