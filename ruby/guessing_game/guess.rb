# create class for the guessing game 
# add initialize method and has some attr. like word, guess letter, limit
# add get word method
  # get the word from the user
  # set the the word equal to attr word
  # set the attr. limit equal to the word length
# crate method to do the process 
  # on each char in the word array 
  # check if the letter in side the word array 
  # print the char if its inside the guess array
  #otherwise print "-"

#crate loop that not stop if the user didn't guess the letter and it will stop 
#as soon as the user figured out the hole word.
  # set the loop equal to the limit
  # if the in put letter include in the word 
     # push that letter to the guess array
     #  if the process method return true break the loop
         # otherwise it will increase by one
   #otherwise
      # loop again and ask the user to input new letter


  class Guessing
      attr_accessor :arr_w, :arr_g, :limit
      def initialize
         @arr_w = []
         @arr_g = []
         @limit = 0
         @is_over = false
      end 

      def get_word(word)
         @limit = word.length 
         @arr_w = word.split('')
      end 

      def process
         @is_over = true
         @arr_w.each do |char|
            if @arr_g.include?(char)
               print char
            else
               print '-'
               @is_over = false
            end
         end 
            puts "\n"
         return @is_over
      end

  end 

# User Interface Code


  idx =0
  guess_word = Guessing.new
  puts "Please enter the word the you would like th next person to guess"
  guess_word.get_word(gets.chomp)

  while idx < guess_word.limit + 1 do
      puts "please enter your guessing letter"
      letter = gets.chomp
      if guess_word.arr_w.include?(letter)
         guess_word.arr_g << letter
         if guess_word.process == true
            puts "****----Congratulation----****"
            puts "Your guessed word is \"#{guess_word.arr_w.join('')}\""
            break 
         else 
            puts "Yahh! your guess letter is right :)\n"
            idx +=1
         end 
      else 
         puts "Sorry! your guess letter is wrong :("
      end 
  end 
