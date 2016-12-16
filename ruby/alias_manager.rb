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