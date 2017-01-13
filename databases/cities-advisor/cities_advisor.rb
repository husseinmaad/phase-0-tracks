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


def create_user(db,name,age,rating,email)

db.execute( "INSERT INTO users(user_name,age,user_rating,user_email)
            VALUES(?,?,?,?)",[name,age,rating,email])
end 

create_user(db,"hussein",26,4,"hussein.maad@outlook.com")