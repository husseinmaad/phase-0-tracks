# Cities-Advisor to check your next city for vacation !

# require gems
require 'sqlite3'
require 'faker'
# Design the Schema for my Data Base

# - database name = cities_advisor
# - tables: users,cities,reviews
# check the picture in the directory see the full schema design.

# Create Sqlite3 DB
db = SQLite3::Database.new("cities_advisor.db")
db.results_as_hash = true
# Create Tables:
# Users Table
create_table_users = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    user_name VARCHAR(255),
    age INT,
    user_rating INT,
    user_email VARCHAR(255)
  )
SQL

# Cities Table
create_table_cities = <<-SQL
  CREATE TABLE IF NOT EXISTS cities(
    id INTEGER PRIMARY KEY,
    city_name VARCHAR(255),
    city_coutery_location VARCHAR(255), 
    city_prices VARCHAR(255)
  )
SQL
# Reviews Table
create_table_reviews = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews(
    id INTEGER PRIMARY KEY,
    review_comments VARCHAR(255),
    rating INT, 
    recommended_visit INT,
    user_id INT,
    city_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (city_id) REFERENCES cities(id)
  )
SQL

# Execute DB Tables
db.execute(create_table_users)
db.execute(create_table_cities)
db.execute(create_table_reviews)

# methods to create new test users in the users table
def create_user(db,name,age,rating,email)

db.execute( "INSERT INTO users(user_name,age,user_rating,user_email)
            VALUES(?,?,?,?)",[name,age,rating,email])
end 

def create_review(db,comments,rating,recommended,user_id,city_id)
  db.execute( "INSERT INTO reviews(review_comments,rating,recommended_visit,user_id,city_id)
    VALUES (?,?,?,?,?)",[comments,rating,recommended,user_id,city_id])
end 

def create_cities(db,name,contry,prices)
  db.execute( "INSERT INTO cities(city_name,city_coutery_location,city_prices)
    VALUES (?,?,?)",[name,contry,prices])
end 

def create_random_comments
  first_word_arr = ["Great!!","Nice!!","Very recommended","Awesome!!"]
  second_word_arr = [", I found the prices really reasonable.random",
                    ", I really enjoy it."," really good place for vacation."," place."," city."]
   return comments = first_word_arr.sample + second_word_arr.sample             
end 

def create_price_sym
  symbol = "$"
  return symbol * rand(1..4)
end 

# Some select from DB methods
def get_city_on_price(db,price)
  rows = db.execute("SELECT cities.city_name, cities.city_coutery_location FROM 
                      cities WHERE cities.city_prices ='#{price}'")
  puts "City Name       Country"
  puts "---------       -------"

  rows.each do |row|
    puts "#{row['city_name']} -- #{row['city_coutery_location']}"
  end
end 

def get_ceriten_info(db)
  rows = db.execute("SELECT users.id,users.user_name,users.user_rating, cities.city_name,reviews.review_comments,
                    reviews.rating FROM users JOIN reviews ON users.id = reviews.user_id 
                    JOIN cities ON reviews.city_id = cities.id ORDER BY users.id")
  rows.each do |row|
    puts "#{row['id']}. Name: #{row['user_name']} User Rate: #{row['user_rating']}
      City: #{row['city_name']}
      Comment: #{row['review_comments']} -- Rate: #{row['rating']}"
    puts "-" * 20
  end
end 
# Update from DB method
def update_user_rateing(db,id,new_value)
  db.execute("UPDATE users SET user_rating=#{new_value} WHERE users.id =#{id}")
end

# Delete from DB method
def delete_from_table(db,id,table_name)
  db.execute("DELETE FROM #{table_name} WHERE #{table_name}.id =#{id}")
end
 
# Driver code

def create_data(db_name)
  300.times do 
    create_user(db_name,Faker::Name.name,Faker::Number.between(18, 70),
                Faker::Number.between(2, 5),Faker::Internet.email)
    create_cities(db_name,Faker::Address.city,Faker::Address.country,create_price_sym)
    create_review(db_name,create_random_comments,Faker::Number.between(3, 5),
                  Faker::Number.between(0, 1),Faker::Number.between(1, 300),Faker::Number.between(1,300))
  end 
end 

#create_data(db)

puts "Welcome to City Advisor Database"
puts "Do you like to view cretin information about City Advisor Database?(y/n)"
get_ceriten_info(db) if (gets.chomp.downcase == "y"? true : false) 

puts "Do you like to check if your next city is expensive or not?(y/n)"
view_city = (gets.chomp.downcase == "y"? true : false) 
if view_city == true
  puts "please enter the price range symbol'$' up to '$$$$$'" 
  price_range = gets.chomp
  get_city_on_price(db,price_range)
end 

puts "Do you like to update the user rating?(y/n)"
update_rate = (gets.chomp.downcase == "y"? true : false) 
if view_city == true
  puts "Please enter the User ID number:"
  id_num = gets.chomp.to_i
  puts "Please enter the new User Rating value:"
  new_rate_value = gets.chomp.to_i
  update_user_rateing(db,id_num,new_rate_value)
end

puts "Do you like to delete some info?(y/n)"
del_info = (gets.chomp.downcase == "y"? true : false)
if del_info == true
  puts "Please enter the table name that you want to delete from:" 
  table_name = gets.chomp
  puts "Please enter the ID number:"
  id_num = gets.chomp.to_i
  delete_from_table(db,id_num,table_name)
end 
puts "THANK YOU"

