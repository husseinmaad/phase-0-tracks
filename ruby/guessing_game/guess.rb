# create class for the guessing game 
# add initialize method and has some attr. like word, guess letter, limit
# add get word method
  # get the word from the user
  # set the the word equal to attr word
  # set the attr. limit equal to the word length
# crate method to do the process 
  #

#crate loop that not stop if the user didn't guess the letter and it will stop 
#as soon as the user figured out the hole word.
  # set the loop equal to the limit

  class Guessing
      attr_accessor 
    def initialize
       @arr_w = []
       @arr_g = []
       @limit = ""
       @is_over = false
    end 
    
    def get_word(word)
      @arr_w = word.split('')
      @limit = word.length 
    end 

    def process
    
    end 
 
  end 