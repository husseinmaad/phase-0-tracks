=begin
  - get the input
  - get the length 
  - until the index = length -1 
  - on each one get the index number 
    - change that latter to the next latter.
=end
=begin
  - store the alphabet in a var
  - utile the the index length -1
  - match the latter in the latter in the alphabet
  - get the index value in the latter in alphabet
  - return the latter that is 1 less then the index value
  - store it in our var
=end


def encrypt(string)
  i =0
  newStr=""
  while i <=string.length-1 do
    
    if string[i] == "z"
      newStr[i] = "a"
    else 
    newStr += string[i].next
    end
    i += 1
  end
 return newStr
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = 0
  while i < string.length
      index = alphabet.index(string[i])
      string[i] = alphabet[index-1]
    i += 1
  end
  return string
end

