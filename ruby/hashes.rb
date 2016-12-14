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
client_details[:children_number] = gets.chomp.to_i 

puts "decor theme"
client_details[:decor_theme] = gets.chomp.to_s

puts "allergist's color"
client_details[:allergist_color] = gets.chomp.to_s
 