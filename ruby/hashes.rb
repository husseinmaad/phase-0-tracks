=begin
  - create an empty hash .
  - add user input interface. 
  - Convert any user input to the appropriate data type
    and assign the input value to the correct key name.
  - print the user inputs to help the designer review the questions answers.
  - prompt message to ask user if he likes to update some values
  - if the user say "none":
    - skip this part and print the hash info. again
    otherwise: 
          - convert the user input to hash key .
          - ask the user to input the new value. 
          - update the key value
          - reprint the latest update.
=end
  
client_details = {}

puts "Welcome To The Client Details Form"
puts "Please answer the fallowing questions"

puts "Enter the client's name"
client_details[:name] = gets.chomp.to_s

puts "Age"
client_details[:age] = gets.chomp.to_i 

puts "Sex"
client_details[:sex] = gets.chomp.to_s

puts "Children number"
client_details[:"children number"] = gets.chomp.to_i 

puts "decor theme"
client_details[:"decor theme"] = gets.chomp.to_s

puts "allergist's color"
client_details[:"allergist color"] = gets.chomp.to_s
 
 puts "Please review your client's info. " 
 puts "=================================="
client_details.each do |key , value|
 puts "#{key}: #{value} ,"
end 

puts "=================================="
puts "Do you like to update some info?"
update_index = gets.chomp.downcase.to_s
client_details.each do |key, value|
if update_index == 'none'
  puts "Client Details"
  puts "=================================="
  client_details.each do |key , value|
   puts "#{key}: #{value} ,"
  end
end
update_index = update_index.downcase.to_sym

puts "Please enter the new value:"
new_value = gets.chomp.to_s
client_details[update_index]= new_value

puts "Client Details"
puts "=================================="
client_details.each do |key , value|
 puts "#{key}: #{value} ,"
end