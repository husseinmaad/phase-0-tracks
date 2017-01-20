# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
get '/students/update' do
  erb :update_student
end


post '/students/update' do
  db.execute("DELETE FROM students WHERE students.id = ?",[params['id'].to_i])
  redirect '/'
end









=begin
# add static resources
get '/students/update' do
  erb :update_student
end
# update students via
# a form
post '/students/update' do
  p params
  db.execute("UPDATE students SET #{params['column']}=#{params['value']} WHERE students.id=#{params['id'].to_i}")
  redirect '/'
end
=end 