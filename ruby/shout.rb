=begin
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
 def self.yelling_happily(words)
    words + "!" + " :)"
  end 
end
=end
module Shout
   def yell_angrily(words)
    words + "!!!" + " :("
  end
 def yelling_happily(words)
    words + "!" + " :)"
  end 
end 

class Scary
  include Shout
end 

class Funny 
  include Shout
end 

movie = Scary.new
puts movie.yell_angrily("Thats so scaryyyyyyyyy")
puts movie.yelling_happily("I like this part of the movie")

movie2 = Funny.new
puts movie2.yell_angrily("Omg! thats scared me")
puts movie2.yelling_happily("Hahaha!! i cant stop laughing ")