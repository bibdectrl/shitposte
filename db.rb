require 'sequel'

DB = Sequel.sqlite

DB.create_table :posts do
  primary_key :id
  String :title
  Text :content
  DateTime :date_posted
end

posts = DB[:posts]


posts.insert(:title => "First post", :content => "this is a dumb idea", :date_posted => Time.now)

puts posts.select.all
