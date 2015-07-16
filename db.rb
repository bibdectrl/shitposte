require 'sequel'

DB = Sequel.sqlite("test.db")

DB.create_table :boards do
  primary_key :id
  String :url
end

DB.create_table :posts do
  primary_key :id
  foreign_key :board_id
  String :title
  Text :content
  DateTime :date_posted
end

DB.create_table :replies do
  foreign_key :post_id
  Text :content
  DateTime :date_posted
end

