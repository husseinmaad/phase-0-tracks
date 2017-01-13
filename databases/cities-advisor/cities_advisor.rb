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
    recommended_visit Boolean,
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

# methode to create new test users in the users table
def create_user(db,name,age,rating,email)

db.execute( "INSERT INTO users(user_name,age,user_rating,user_email)
            VALUES(?,?,?,?)",[name,age,rating,email])
end 

def create_review(db,comments,rating,recommendegitd,user_id,city_id)
  db.execute( "INSERT INTO reviews(review_comments,rating,recommended_visit,user_id,city_id)
    VALUES (?,?,?,?,?)",[comments,rating,recommended,user_id,city_id])
end 

def create_cities(db,name,contry,prices)
  db.execute( "INSERT INTO cities(city_name,city_coutery_location,city_prices)
    VALUES (?,?,?)",[name,contry,prices])
end 

def create_random_comments
  first_word_arr = ["Great!!","Nice!!","Very recommended","Awesome!!"]
  second_word_arr = [" ,I found the prices really reasonable.random",
                    " ,I really enjoy it."," really good place for vacation."," place."," city."]
   comments = first_word_arr.sample + second_word_arr.sample
   return comments              
end 
def create_price_sym
  symbol = "$ "
  return symbol * rand(1..4)
end 

300.times do 
  create_user(db,Faker::Name.name,Faker::Number.between(18, 70),
              Faker::Number.between(2, 5),Faker::Internet.email)
  create_cities(db,Faker::Address.city,Faker::Address.country)
end 
=begin
  create_review(db,create_random_comments,Faker::Number.between(3, 5),
  Faker::Boolean.boolean,Faker::Number.between(1, 299),Faker::Number.between(1,299))
  
end

