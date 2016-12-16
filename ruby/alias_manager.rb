=begin
 - Create methods to check the vowel letter and return the new one if found

    - if that latter is exist in the vowel array by using the include method
        - if its equal true means you find the letter 
            -check if the letter equal to "u" then the letter equal "a" to avoid the nil value
            otherwise:
            - use the built in method index to get the index and increment by 1
            - assign the value to the letter and return the new letter value from the vowel array
            - stop  
    -otherwise :
       - send the letter to new method to get the next letter in alphabet
            - create new method that take letter:
                - create array of alphabet letter exclude the vowels letter 
                - on each letter of that array:
                    - if letter is equal the letter that i send to to this method
                        - get the index of that letter increment by 1 and assign it as index 
                          for the array to get the next letter and break the process and return the value
                          - stop
    - create another method that take the agent name and responsible to handle the changing letters process
      - change the name to array
      - change each letter value in the array by send it to the next_vowal_or_letter 
      - join the changed letters and put in variable.
      - change the new name to capitalize the first letters of each name by split and change each sting
        first latter to capital 
  - create loop
    - ask the user to input the full name and downcase the letter
    - break the loop if its equal to quit
    -swap the name by split is and reverse is and join it again 
    - send the swap name to change agent name method
    - create secret agent hash outside the loop to hold the names before and after 
    - create new index outside the loop and assign it to 0
    - push the new names and the old name to the secret agent hash by create 
      unique key name(key name + index) for each round of loop
  - end of loop
  - print each value inside the secret agent hash
=end

def next_vowal_or_letter(char)
  vowal_letter = ['a','e','i','o','u']
  if vowal_letter.include? (char)
    if char == 'u'
       char = 'a'
    else 
      index = vowal_letter.index(char) + 1
      char= vowal_letter[index]
    end
  else 
    return change_letter(char)  
  end 
end

def change_letter(char)
  main_str = "bcdfghjklmnpgrstvwxyz".chars
  main_str.each do |letter|
    if letter == char 
      char = main_str[main_str.index(letter) + 1]
      break
    end 
  end
  return char
end 

def change_agent_name (string)
  agent_name= string.split('')
  agent_name.map!{|letter| next_vowal_or_letter(letter)}
  new_name = agent_name.join('')
  new_name = new_name.split.map!{|string| string.capitalize}.join(' ')
end   

puts "Welcome To Secret Agents of DBC Changing Names System"
puts "====================================================="
  secret_agents_names = {}

  full_name = ""
  index= 0 
    loop do
      puts "Please Enter Your First and Last Name"
      full_name = gets.chomp.to_s
      break if full_name == "quit".downcase
      
      swap_full_name = full_name.downcase.split.reverse.join(' ')
      agent_new_name = change_agent_name(swap_full_name)
      
      secret_agents_names[:"name#{index}"] = agent_new_name + " is also known as " + full_name
      index += 1
    end 
puts "============DBC Secret Agents Names List============="
secret_agents_names.each {|key, value| puts "#{value}"} 
puts "-----------------------------------------------------"