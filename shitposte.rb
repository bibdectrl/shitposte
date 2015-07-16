require 'sinatra'
require 'sequel'

DB = Sequel.sqlite("test.db")

get '/' do
  erb :index
end

get '/board' do
  
end

post '/board' do
  @board = DB[:boards].where(:url => params["board_id"])
  if @board.empty?
    erb :new_board
  else  
    @posts = DB[:posts].where(:board_id => params["board_id"])
    @board_id = params["board_id"]
    erb :board
  end
end

 
post '/board/:id/:post' do
  puts params["content"]
end


